
AWS Project01 IAM Foundation. Visão geral. Este projeto demonstra a implementação prática do AWS Identity and Access Management, o serviço responsável pelo gerenciamento de usuários, grupos, permissões e políticas de acesso na AWS. Projeto desenvolvido usando o AWS Management Console, aplicando boas práticas de segurança recomendadas pela AWS, como o princípio do menor privilégio (Least Privilege) e autenticação multifator (MFA). Objetivos. Criar usuários IAM. Criar grupos IAM. Criar políticas customizadas. Gerenciar permissões de acesso. Configurar MFA. Aplicar o princípio do menor privilégio. Validar as permissões configuradas.


Serviços utilizados. AWS IAM, AWS Management Console, Multi-Factor Authentication (MFA).


Pré-requisitos. Conta AWS ativa, acesso ao console, permissões de administrador.


Implementação. Etapa 1. Criar um usuário IAM. Criar um usuário IAM com acesso ao console. Resultado esperado: usuário criado com sucesso e credenciais geradas. Etapa 2. Criar um grupo IAM. Criar um grupo chamado Developers para centralizar permissões. Resultado esperado: grupo criado com sucesso. Etapa 3. Criar uma política personalizada. Criar uma política personalizada concedendo apenas as permissões necessárias para o laboratório. Resultado esperado: política criada com sucesso.


Etapa 4. Associá a política ao grupo. Vincular a política criada ao grupo Developers. Resultado esperado: grupo com permissões configuradas. Etapa 5. Adicionar o usuário ao grupo. Adicionar o usuário criado ao grupo Developers. Resultado esperado: usuário herdando as permissões do grupo. Etapa 6. Configurar MFA. Habilitar autenticação multifator para aumentar a segurança. Resultado esperado: MFA configurado corretamente.


Etapa 7. Validar permissões. Realizar login com o usuário criado e validar permissões concedidas. Acesso permitido somente aos recursos autorizados e acesso negado às ações não permitidas. Estrutura do projeto.


aws-project-01-iam-foundation. README.md, architecture, policies, screenshots.


Boas práticas aplicadas. Princípio do menor privilégio, uso de grupos para permissões, políticas customizadas, MFA, evitar usar a conta root no dia a dia. Lições aprendidas. Funcionamento do AWS IAM,


Diferença entre usuários, grupos e políticas. Controle seguro de permissões, importância do MFA na proteção da conta. Próximos projetos. Amazon EC2, Amazon S3, Amazon VPC, Elastic Load Balancer, Auto Scaling, Amazon RDS, Amazon CloudWatch, Amazon Route 53, Terraform, Docker, CI/CD. Autor. Marcio Rodrigues. Projeto desenvolvido como parte do AWS Cloud Engineer Portfolio, com foco em aprendizado prático e documentação técnica. Esse é um README limpo e pronto para você colá no projeto.
