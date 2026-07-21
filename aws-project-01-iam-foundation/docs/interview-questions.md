# Perguntas de entrevista

## O que é o AWS IAM?

<<<<<<< HEAD
Resposta:
É o serviço responsável pelo gerenciamento de identidades e permissões na AWS.

---

## Qual a diferença entre User e Role?

Resposta:
...
=======
É o serviço responsável pelo gerenciamento de identidades, autenticação e autorização na AWS.

## Qual a diferença entre User e Role?

Um IAM User representa uma identidade persistente, normalmente associada a uma pessoa ou aplicação legada. Uma IAM Role é uma identidade assumível que fornece credenciais temporárias para usuários federados, serviços AWS ou outras contas.

Para aplicações e serviços, roles são preferíveis a access keys permanentes.

## O que é um Group?

Um grupo é uma coleção de usuários IAM. As permissões podem ser associadas ao grupo e herdadas pelos usuários que pertencem a ele.

## Por que não devemos usar a conta Root no dia a dia?

A conta Root possui acesso total e não pode ser limitada por políticas IAM. Ela deve ser protegida com MFA e usada apenas para tarefas específicas de gerenciamento da conta.

## O que é o princípio do menor privilégio?

É conceder somente as permissões necessárias para executar uma tarefa, evitando permissões administrativas desnecessárias.

## O que é MFA?

MFA adiciona um segundo fator de autenticação além da senha, reduzindo o risco de comprometimento da conta.

## O que são políticas IAM?

São documentos JSON que definem quais ações são permitidas ou negadas, para quais recursos e sob quais condições.

## O que é uma política gerenciada?

É uma política independente que pode ser associada a usuários, grupos ou roles. Ela pode ser reutilizada e administrada separadamente.

## O que é uma política inline?

É uma política embutida diretamente em uma identidade específica. Ela não é reutilizável e deve ser usada com cuidado.

## Como validar uma política IAM?

Além da execução prática, pode-se usar o IAM Policy Simulator, a AWS CLI, logs do CloudTrail e testes positivos e negativos de autorização.
>>>>>>> ca5c29f (feat: complete IAM foundation lab)
