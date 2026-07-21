## Minha experiência

Durante este laboratório, meu principal objetivo foi compreender como estruturar permissões utilizando o AWS IAM e aplicar o princípio do menor privilégio.

O maior aprendizado foi entender a relação entre usuários, grupos e políticas. Em vez de atribuir permissões diretamente ao usuário, utilizei um grupo para centralizar o controle de acesso e facilitar futuras manutenções.

Também implementei uma política personalizada para permitir apenas as ações necessárias em instâncias EC2 identificadas por uma tag específica. Dessa forma, o usuário consegue iniciar e parar somente os recursos autorizados.

Além dos testes de acesso permitidos, realizei testes negativos para confirmar que o usuário não poderia excluir instâncias, alterar políticas do IAM ou acessar recursos fora do escopo definido.

Esse projeto também reforçou a importância de:

- Evitar permissões administrativas desnecessárias;
- Utilizar grupos para organizar acessos;
- Aplicar MFA nas contas IAM;
- Testar permissões permitidas e negadas;
- Documentar a infraestrutura e os procedimentos de limpeza.