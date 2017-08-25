#!/bin/bash
cd "$(dirname "$0")"
pwd
ls

# git pull
function doIt() {
	# rsync --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "brew.sh" --exclude "setup_computer.sh" --exclude "README.md" -av . ~
    # ln -s configuration/* ~/
    for f in $(ls -d ~/dotfiles/config/.??*); do
        ln -sfn $f ~/;
        echo $f;
    done
    # unlink ~/.bash_profile
    # cp -i config/.bash_profile ~/
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
source ~/.bash_profile
