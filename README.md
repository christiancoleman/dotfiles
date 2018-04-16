# dotfiles

.tmux.conf started from https://gist.github.com/spicycode/1229612

.vimrc started small from multiple places

help from https://www.digitalocean.com/community/tutorials/how-to-use-git-to-manage-your-user-configuration-files-on-a-linux-vps

where they suggest,

(in dotfiles directory)
ln -s .vimrc ~/ && ln -s .tmux.conf ~/

*** Sometimes it will be necessary to convert these files from having Windows-type line-endings to unix-type line-endings because of the switch between an action Linux distro and the Windows subsystem for Linux (While using git for windws)
	To do this use the `dos2unix` program
	Example: dos2unix .tmux.conf.nodeps
