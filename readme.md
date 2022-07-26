# Scripts de criação de ambiente dev docker

## Pre install  

1 - Clone esse repositório

2 - Abra o terminal e execute os seguintes comandos:

`sudo chmod +x pre-install.sh`

`sudo chmod +x post-install.sh`

`./pre-install.sh`

2 - Reinicie a máquina

Rode o segundo script:

`./post-install.sh`

3 - Crie sua chave .ssh
Abra o termninal e execute os comandos e va apertando enter pra confirmar:

`ssh-keygen`

rode o comando :

`cat ~/.ssh/id_rsa.pub`

Copie a chave toda e insira no seu bitbucket na url: https://bitbucket.org/account/settings/ssh-keys/

3 - Clone os projetos em sua pasta de preferência
