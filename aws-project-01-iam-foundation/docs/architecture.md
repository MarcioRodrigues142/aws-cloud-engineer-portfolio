# Arquitetura

## Objetivo

Demonstrar o gerenciamento de identidades utilizando o AWS IAM.

## Componentes

- IAM User
- IAM Group
- IAM Policy
- MFA

## Fluxo

Administrator/IAM Admin
        │
        ├── Cria e administra
        │
        ├── Developers Group
        │       └── Recebe a política EC2StartStopOnly
        │
        └── DeveloperUser
                └── Pertence ao grupo Developers
                         └── MFA