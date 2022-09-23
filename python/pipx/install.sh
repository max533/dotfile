# Initialize Pyenv (Use python which pyenv install to create virtualenv environment)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Declare pipx variable
export PIPX_HOME=~/.local/pipx
export PIPX_BIN_DIR=~/.local/bin
export PIPX_SETUP_FOLDER=~/.pipx

# Set pipx variable to .bashrc
echo '' >> ~/.bashrc
echo '# Setup Pipx' >> ~/.bashrc
echo "PIPX_HOME=$PIPX_BIN_DIR" >> ~/.bashrc
echo "PIPX_BIN_DIR=$PIPX_BIN_DIR" >> ~/.bashrc
echo "PIPX_SETUP_FOLDER=$PIPX_SETUP_FOLDER" >> ~/.bashrc

# Create python virtual environment
mkdir -p $PIPX_SETUP_FOLDER
python -m venv $PIPX_SETUP_FOLDER

# Install pipx
$PIPX_SETUP_FOLDER/bin/python -m pip install pipx
$PIPX_SETUP_FOLDER/bin/python -m pipx ensurepath

# Make pipx soft link
ln -sf $PIPX_SETUP_FOLDER/bin/pipx $PIPX_BIN_DIR/pipx
