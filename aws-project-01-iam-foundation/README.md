# ☁️ AWS Project 01 – IAM Foundation

## 📖 Visão Geral

Este projeto demonstra a implementação prática do **AWS Identity and Access Management (IAM)**, o serviço responsável pelo gerenciamento de identidades e controle de acesso aos recursos da AWS.

O laboratório foi desenvolvido utilizando o **AWS Management Console**, aplicando boas práticas recomendadas pela AWS, como o **Princípio do Menor Privilégio** e a **Autenticação Multifator (MFA)**.

---

# 🎯 Objetivos

- Criar usuários IAM
- Criar grupos IAM
- Criar políticas customizadas
- Gerenciar permissões de acesso
- Configurar autenticação multifator (MFA)
- Aplicar o princípio do menor privilégio
- Validar as permissões configuradas

---

## 🛠 Tecnologias utilizadas neste projeto

- AWS IAM
- AWS Management Console
- AWS CLI, utilizado no script de limpeza
- Bash
- Git
- GitHub
- Draw.io
---

# 📋 Pré-requisitos

- Conta AWS ativa
- Acesso ao AWS Management Console
- Permissões de administrador

---

# 🏗️ Arquitetura

O diagrama da arquitetura pode ser encontrado em:

diagrams/iam.drawio

``` aws-project-01-iam-foundation/ │ ├── diagrams/ ├── docs/ ├── images/ ├── policies/ ├── scripts/ ├── README.md ├── LICENSE └── .gitignore ```
---

# 🚀 Implementação

## Etapa 1 – Criar um usuário IAM

Criar um usuário IAM. O acesso ao Console, a senha inicial e o MFA devem ser configurados manualmente, quando necessário.

**Resultado**

- Usuário criado com sucesso;
- Credenciais configuradas manualmente, se necessário;
- Nenhuma credencial armazenada no repositório.
---

## Etapa 2 – Criar um grupo IAM

Criar um grupo chamado **Developers** para centralizar as permissões.

**Resultado**

- Grupo criado com sucesso

---

## Etapa 3 – Criar uma política customizada

Criar uma política personalizada concedendo apenas as permissões necessárias para o laboratório.

**Resultado**

- Política criada com sucesso

---

## Etapa 4 – Associar a política ao grupo

Vincular a política criada ao grupo **Developers**.

**Resultado**

- Grupo com permissões configuradas

---

## Etapa 5 – Adicionar o usuário ao grupo

Adicionar o usuário criado ao grupo **Developers**.

**Resultado**

- Usuário herdando automaticamente as permissões do grupo

---

## Etapa 6 – Configurar MFA

Habilitar a autenticação multifator para aumentar a segurança da conta.

**Resultado**

- MFA configurado corretamente

---

## Etapa 7 – Validar as permissões

Realizar login utilizando o usuário criado e validar os acessos concedidos.

**Resultado**

- Acesso permitido somente aos recursos autorizados
- Ações não permitidas bloqueadas corretamente

---

# 📂 Estrutura do Projeto

aws-project-01-iam-foundation/
│
├── diagrams/
├── docs/
├── images/
├── policies/
├── scripts/
├── README.md
├── LICENSE
└── .gitignore

---

# 🔐 Boas Práticas Aplicadas

- Aplicação do princípio do menor privilégio
- Utilização de grupos para gerenciamento de permissões
- Criação de políticas customizadas
- Configuração de autenticação multifator (MFA)
- Evitar o uso da conta Root para atividades do dia a dia

---

# 📚 Lições Aprendidas

Durante este projeto foi possível compreender:

- O funcionamento do AWS IAM
- Diferenças entre usuários, grupos e políticas
- Controle seguro de permissões
- Importância da autenticação multifator
- Organização das permissões utilizando grupos

---

# 🚀 Próximos Projetos

- Amazon EC2
- Amazon S3
- Amazon VPC
- Elastic Load Balancer
- Auto Scaling
- Amazon RDS
- Amazon CloudWatch
- Amazon Route 53
- Terraform
- Docker
- CI/CD com GitHub Actions

---

## Documentação

- [Arquitetura](docs/architecture.md)
- [Implementação](docs/implementation.md)
- [Segurança](docs/security.md)
- [Validação](docs/validation.md)
- [Limpeza dos recursos](docs/cleanup.md)

# 👨‍💻 Autor

**Marcio Rodrigues**

Projeto desenvolvido como parte do **AWS Cloud Engineer Portfolio**, com foco em aprendizado prático, documentação técnica e aplicação das melhores práticas da AWS.