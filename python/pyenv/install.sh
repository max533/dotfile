# Git Clone Pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Compile a dynamic Bash extension to speed up Pyenv
cd ~/.pyenv && src/configure && make -C src

# Setup Pyenv with Shell
echo '' >> ~/.bashrc
echo '# Setup Pyenv' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

# Initialize Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Install Python 3.11.9 with pyenv
pyenv install 3.11.9
pyenv global 3.11.9
