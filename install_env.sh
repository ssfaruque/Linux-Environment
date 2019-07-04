#!/bin/sh

# miscellaneous tools
sudo apt install -y git psensor htop

# C/C++ software and tools
sudo apt install -y gcc clang g++ gdb valgrind gprof

# python software and tools
sudo apt install -y python3 python3-pip python3-venv

# containerization software
sudo apt install -y docker.io docker-compose

# vim
sudo apt install -y vim
cp .vimrc ~/.vimrc
vim -c "PlugInstall"

#tmux
sudo apt install -y tmux
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# zsh
sudo apt install -y zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt install -y fonts-powerline
