#!/bin/bash
# install vim plug manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://gitee.com/astroshot/vim-plug/blob/master/plug.vim
cp .vimrc ~/
vim +'PlugInstall --sync' +qa
vim +'CocInstall coc-json coc-tsserver' +qa
# install node, comment following code if you already have.
# this will take really long time.... be patient
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
