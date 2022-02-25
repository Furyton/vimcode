#!/bin/bash

# Install vim plug manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc ~/
vim +'PlugInstall --sync' +qa
vim +'CocInstall coc-json coc-tsserver' +qa
cp -r plugin/ ~/.vim

# Install node.js, comment following code if you don't need it.
# This will take really long time.... be patient
# For more details, see https://askubuntu.com/a/982003
if ! command -v node &> /dev/null
then
    echo "node could not be found, assume you use bash and not a sudo user"
    echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
    source ~/.bashrc
    mkdir ~/local
    mkdir ~/node-latest-install
    cd ~/node-latest-install
    wget -c http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
    ./configure --prefix=~/local
    make install
    wget -c https://www.npmjs.org/install.sh | sh
fi
