# Validação de Permissões

## Pré-requisitos

- Usuário `DeveloperUser` criado;
- Usuário associado ao grupo `Developers`;
- Política `EC2StartStopOnly` associada ao grupo;
- Uma instância EC2 de laboratório com a tag `Environment=lab`;
- MFA configurado para o usuário.

## Matriz de testes

| Teste | Resultado esperado |
|---|---|
| Visualizar instâncias EC2 | Permitido |
| Consultar status das instâncias | Permitido |
| Iniciar instância com `Environment=lab` | Permitido |
| Parar instância com `Environment=lab` | Permitido |
| Iniciar instância sem a tag | Negado |
| Parar instância sem a tag | Negado |
| Terminar uma instância | Negado |
| Criar uma instância | Negado |
| Criar usuário IAM | Negado |
| Alterar política IAM | Negado |

## Testes pela AWS CLI

Após autenticar como `DeveloperUser`:

aws sts get-caller-identity
aws ec2 describe-instances --region us-east-1
aws ec2 describe-instance-status --include-all-instances --region us-east-1
aws ec2 start-instances --instance-ids <INSTANCE_ID> --region us-east-1
aws ec2 stop-instances --instance-ids <INSTANCE_ID> --region us-east-1

O usuário deve conseguir executar os comandos de consulta e iniciar/parar somente a instância autorizada pela tag.

Para testar uma ação proibida:

aws ec2 terminate-instances   --instance-ids <INSTANCE_ID>   --region us-east-1

O resultado esperado é `AccessDenied`.

## Evidências recomendadas

Adicionar screenshots reais em `images/`:

- Grupo `Developers`;
- Política anexada ao grupo;
- Usuário associado ao grupo;
- MFA ativo;
- Instância com a tag `Environment=lab`;
- Operação permitida;
- Operação negada.

> Nunca incluir access keys, senhas, QR Codes, códigos MFA ou informações sensíveis nas imagens.
