#!/bin/sh

# Install script in 'runDeploy'

setup_VIM_env() {
	echo "Install VIM plugins ..."

	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
#	apply_config ./vim_config/vimrc ~/.vimrc
	ln -s ${__BASE_PATH}/vim_config/vimrc ~/.vimrc
	vim +PluginInstall +qall
	mkdir tmp
	tar vxfz ./vim_config/packages/conque_2.2.tar.gz -C tmp
	cp -rf tmp/conque_2.2/* ~/.vim
	unzip ./vim_config/packages/SrcExpl-5.3.zip -d ~/.vim
	unzip ./vim_config/packages/NERD_tree.zip -d ~/.vim
	unzip ./vim_config/packages/Trinity-2.1.zip -d tmp
	cp -rf tmp/Trinity/* ~/.vim
	unzip ./vim_config/packages/taglist_46.zip -d ~/.vim
	rm -rf tmp
}
