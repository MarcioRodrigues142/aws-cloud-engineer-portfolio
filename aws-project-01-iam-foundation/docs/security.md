# Segurança

## Controles aplicados

- Não utilizar a conta Root no dia a dia;
- Habilitar MFA;
- Centralizar permissões em grupos;
- Aplicar o princípio do menor privilégio;
- Permitir somente as ações necessárias de EC2;
- Restringir `StartInstances` e `StopInstances` pela tag `Environment=lab`;
- Não armazenar credenciais no Git;
- Usar uma conta de laboratório;
- Remover os recursos ao final dos testes.

## Limitações do laboratório

Usuários IAM são mantidos neste projeto para fins didáticos. Em ambientes corporativos, prefira federação de identidade, IAM Identity Center e roles temporárias sempre que possível.

A política utiliza `Resource: "*"` porque algumas ações de consulta do EC2 não permitem o mesmo escopo de recurso utilizado nas ações de alteração.

