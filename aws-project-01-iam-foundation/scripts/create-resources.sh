#!/usr/bin/env bash
set -euo pipefail

: "${AWS_PROFILE:=default}"
: "${AWS_REGION:=us-east-1}"
: "${GROUP_NAME:=Developers}"
: "${USER_NAME:=DeveloperUser}"
: "${POLICY_NAME:=EC2StartStopOnly}"

export AWS_PROFILE AWS_REGION

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
POLICY_FILE="${SCRIPT_DIR}/../policies/EC2StartStopOnly.json"

ACCOUNT_ID="$(aws sts get-caller-identity --query Account --output text)"
POLICY_ARN="arn:aws:iam::${ACCOUNT_ID}:policy/${POLICY_NAME}"

aws iam get-group --group-name "${GROUP_NAME}" >/dev/null 2>&1 ||   aws iam create-group --group-name "${GROUP_NAME}" >/dev/null

if ! aws iam get-policy --policy-arn "${POLICY_ARN}" >/dev/null 2>&1; then
  aws iam create-policy     --policy-name "${POLICY_NAME}"     --policy-document "file://${POLICY_FILE}" >/dev/null
fi

aws iam create-user --user-name "${USER_NAME}" >/dev/null 2>&1 || true
aws iam attach-group-policy   --group-name "${GROUP_NAME}"   --policy-arn "${POLICY_ARN}" >/dev/null
aws iam add-user-to-group   --group-name "${GROUP_NAME}"   --user-name "${USER_NAME}" >/dev/null

echo "Recursos IAM criados/configurados."
echo "Usuário: ${USER_NAME}"
echo "Grupo: ${GROUP_NAME}"
echo "Política: ${POLICY_ARN}"
echo "Configure o MFA manualmente antes de usar o usuário."
