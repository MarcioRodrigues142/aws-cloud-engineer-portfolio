# Arquitetura

## Objetivo

Demonstrar o gerenciamento de identidades e permissões utilizando o AWS IAM.

## Componentes

- AWS Account
- IAM User: `DeveloperUser`
- IAM Group: `Developers`
- IAM Policy: `EC2StartStopOnly`
- MFA

## Fluxo

```AWS Account │ └── IAM Service │ ├── IAM Group: Developers │ └── IAM Policy: EC2StartStopOnly │ └── IAM User: DeveloperUser ├── Membro do grupo Developers └── MFA habilitado ```

O usuário `DeveloperUser` recebe as permissões por meio do grupo `Developers`.