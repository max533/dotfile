# Download Oh My Posh

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

# Download the themes

mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.omp.*
rm ~/.poshthemes/themes.zip

# Initialize with shell

echo "# Set shell prompt theme with Oh My Push" >> ~/.bashrc
echo "eval \"\$(oh-my-posh --init --shell bash --config ~/.pushthemes/montys.omp.json)\"" >> ~/.bashrc
source ~/.bashrc
