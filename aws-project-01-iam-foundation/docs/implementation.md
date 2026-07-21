# Implementação

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


## MFA

O MFA deve ser configurado para o usuário pelo Console ou por um processo controlado. Não registre o código TOTP no Git.

## Resultado esperado

- `DeveloperUser` pertence ao grupo `Developers`;
- O grupo possui a política `EC2StartStopOnly`;
- O usuário pode consultar instâncias;
- O usuário pode iniciar/parar somente instâncias com `Environment=lab`;
- Ações administrativas, como terminar instâncias ou alterar IAM, são negadas.
(feat: complete IAM foundation lab)
