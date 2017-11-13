#!/bin/bash
#Setup vim config information

BASEDIR=$(dirname $0)
cd $BASEDIR
CURRENT_DIR=`pwd`


echo 'Step1: Backup old configuration'
TODAY=`date +%Y%m%d`
for i in $HOME/.vimrc;
do 
	[ -e $i ] && [ ! -L $i] && mv $i $i.$TODAY;
done

echo 'Step 2: Set up symbol links'
ln -sf $CURRENT_DIR/.vimrc $HOME/.vimrc
ln -sf $CURRENT_DIR/ $HOME/.vim

echo 'Step 3: Install vundle'
if [ ! -e $CURRENT_DIR/bundle/vundle ]; then
	echo 'Installing vundle'
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
	echo 'Upgrading vundle'
	cd "$CURRENT_DIR/bundle/vundle" && git pull origin master
fi

echo 'Step 4: Install plugins'
vim -u $HOME/.vimrc.bundles +BundleInstall! +BundleClean +qall
#vim +BundleClean +BundleInstall! +qa

echo 'down! enjoy it!'
