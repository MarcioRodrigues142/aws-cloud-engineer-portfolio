#!/usr/bin/env bash
set -euo pipefail

: "${AWS_PROFILE:=default}"
: "${GROUP_NAME:=Developers}"
: "${USER_NAME:=DeveloperUser}"
: "${POLICY_NAME:=EC2StartStopOnly}"

export AWS_PROFILE

read -r -p "Deseja remover os recursos IAM do laboratório? [y/N] " response

if [[ "$response" != "y" && "$response" != "Y" ]]; then
  echo "Operação cancelada."
  exit 0
fi

ACCOUNT_ID="$(aws sts get-caller-identity --query Account --output text)"
POLICY_ARN="arn:aws:iam::${ACCOUNT_ID}:policy/${POLICY_NAME}"

aws iam remove-user-from-group \
  --group-name "${GROUP_NAME}" \
  --user-name "${USER_NAME}" 2>/dev/null || true

aws iam detach-group-policy \
  --group-name "${GROUP_NAME}" \
  --policy-arn "${POLICY_ARN}" 2>/dev/null || true

aws iam delete-user \
  --user-name "${USER_NAME}" 2>/dev/null || true

aws iam delete-group \
  --group-name "${GROUP_NAME}" 2>/dev/null || true

aws iam delete-policy \
  --policy-arn "${POLICY_ARN}" 2>/dev/null || true

echo "Limpeza concluída para os recursos que puderam ser removidos."
echo "Se o usuário possuir MFA, senha ou outras credenciais, remova-as manualmente antes de excluir o usuário."


if aws iam get-user --user-name "${USER_NAME}" >/dev/null 2>&1; then
  echo "Atenção: o usuário ${USER_NAME} ainda existe."
  echo "Verifique MFA, senha, access keys ou outras credenciais associadas."
else
  echo "Usuário ${USER_NAME} removido com sucesso."
fi