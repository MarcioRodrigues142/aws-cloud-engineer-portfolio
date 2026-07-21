# Limpeza

Para evitar recursos e identidades esquecidas:

bash
AWS_PROFILE=portfolio-admin ./scripts/cleanup-resources.sh


Se o usuário tiver um dispositivo MFA, remova-o pelo Console ou pela AWS CLI antes de excluir o usuário.

Também confirme que não existe uma instância EC2 criada exclusivamente para o laboratório. Instâncias EC2 não são criadas pelos scripts deste projeto.
