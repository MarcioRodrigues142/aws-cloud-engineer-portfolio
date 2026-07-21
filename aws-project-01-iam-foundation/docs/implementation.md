# Implementação

<<<<<<< HEAD
## Etapa 1

Criar o grupo Developers

Objetivo:
Centralizar as permissões.

Resultado esperado:
Grupo criado.

---

## Etapa 2

Criar o usuário DeveloperUser

Objetivo:
Criar um usuário para acesso ao Console AWS.

Resultado esperado:
Usuário criado.
=======
> Execute o laboratório em uma conta AWS de testes e na região escolhida. Não versionar credenciais, access keys, códigos MFA ou arquivos `.csv` de senha.

## Recursos

| Recurso | Nome sugerido |
|---|---|
| Grupo IAM | `Developers` |
| Usuário IAM | `DeveloperUser` |
| Política IAM | `EC2StartStopOnly` |
| Tag da instância de laboratório | `Environment=lab` |

## Opção A — AWS Management Console

1. Criar o grupo `Developers`.
2. Criar a política customizada a partir de `policies/EC2StartStopOnly.json`.
3. Associar a política ao grupo.
4. Criar o usuário `DeveloperUser` com acesso ao Console.
5. Adicionar o usuário ao grupo `Developers`.
6. Configurar MFA para o usuário.
7. Criar ou selecionar uma instância EC2 de laboratório com a tag `Environment=lab`.
8. Fazer login como `DeveloperUser` e executar os testes de `docs/validation.md`.

## Opção B — AWS CLI

Configure um perfil administrativo localmente:

```bash
aws configure --profile portfolio-admin
```

Depois execute:

```bash
export AWS_PROFILE=portfolio-admin
export AWS_REGION=us-east-1
export POLICY_ARN="arn:aws:iam::<ACCOUNT_ID>:policy/EC2StartStopOnly"
```

Substitua `<ACCOUNT_ID>` pelo ID da sua conta e ajuste a região conforme necessário.

O script `scripts/create-resources.sh` cria o grupo, a política, o usuário e associa os recursos. Por segurança, ele não cria senha nem access key automaticamente.

```bash
chmod +x scripts/create-resources.sh scripts/cleanup-resources.sh
AWS_PROFILE=portfolio-admin AWS_REGION=us-east-1 ./scripts/create-resources.sh
```

## MFA

O MFA deve ser configurado para o usuário pelo Console ou por um processo controlado. Não registre o código TOTP no Git.

## Resultado esperado

- `DeveloperUser` pertence ao grupo `Developers`;
- O grupo possui a política `EC2StartStopOnly`;
- O usuário pode consultar instâncias;
- O usuário pode iniciar/parar somente instâncias com `Environment=lab`;
- Ações administrativas, como terminar instâncias ou alterar IAM, são negadas.
>>>>>>> ca5c29f (feat: complete IAM foundation lab)
