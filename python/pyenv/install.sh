# Git Clone Pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Compile a dynamic Bash extension to speed up Pyenv
cd ~/.pyenv && src/configure && make -C src

# Setup Pyenv with Shell
echo '# Setup Pyenv' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

# Initialize Pyenv
source ~/.bashrc

# Install Python 3.9.14 with pyenv
pyenv install 3.9.14
pyenv global 3.9.14
