#!/bin/sh

echo 'installing nvm'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc

echo 'parse_git_branch() { git branch 2> /dev/null | sed -e "/^[^*]/d' -e 's/* \(.*\)/ (\1)/"}' >> ~/.bashrc

echo 'export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "' >> ~/.bashrc

nvm install 12

echo 'installing portainer'

docker volume create portainer_data

docker run -d -p 9000:9000 --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    portainer/portainer-ce:2.9.3
