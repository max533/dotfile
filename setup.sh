echo '================================'
echo 'Ready to setup development environment. Wait for moment.'

WORKDIR="$HOME/dotfile"

cd $WORKDIR/shell/bash
./install.sh

cd $WORKDIR/shell/theme
./install.sh

cd $WORKDIR/vscode
./install.sh

cd $WORKDIR/python/pyenv
./install.sh

cd $WORKDIR/python/pipx
./install.sh
echo '================================'
echo 'Development environment is ready.'
