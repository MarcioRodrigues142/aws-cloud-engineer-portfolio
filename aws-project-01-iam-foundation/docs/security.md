# Segurança

<<<<<<< HEAD
## Boas práticas aplicadas

- Não utilizar a conta Root no dia a dia.
- Utilizar MFA.
- Aplicar o princípio do menor privilégio.
- Utilizar grupos.
- Utilizar políticas customizadas.
=======
## Controles aplicados

- Não utilizar a conta Root no dia a dia;
- Habilitar MFA;
- Centralizar permissões em grupos;
- Aplicar o princípio do menor privilégio;
- Permitir somente `Describe`, `Start` e `Stop` de EC2;
- Restringir `StartInstances` e `StopInstances` pela tag `Environment=lab`;
- Não armazenar credenciais no Git;
- Usar uma conta de laboratório e remover os recursos ao final.

## Limitações do laboratório

Usuários IAM são mantidos neste projeto para fins didáticos. Em ambientes corporativos, prefira federação de identidade, IAM Identity Center e roles temporárias sempre que possível.

A política usa `Resource: "*"` porque as ações de descrição de EC2 não suportam o mesmo escopo de recurso das ações de iniciar/parar. O controle de acesso às ações de mudança é reforçado pela condição de tag.
>>>>>>> ca5c29f (feat: complete IAM foundation lab)
