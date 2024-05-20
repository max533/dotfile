echo ''
echo '================================'
echo 'Ready to setup development environment. Wait for moment.'
echo '================================'
echo ''

WORKDIR="$(pwd)/dotfile"

echo ''
echo '================================'
echo 'Install Bash components'
echo '================================'
echo ''

cd $WORKDIR/shell/bash
./install.sh

echo ''
echo '================================'
echo 'Install Theme components'
echo '================================'
echo ''

cd $WORKDIR/shell/theme
./install.sh

echo ''
echo '================================'
echo 'Install Pyenv components'
echo '================================'
echo ''

cd $WORKDIR/python/pyenv
./install.sh

echo '================================'
echo 'Install Pipx components'
echo '================================'

cd $WORKDIR/python/pipx
./install.sh

echo ''
echo '================================'
echo 'Development environment is ready.'
echo '================================'
echo ''
