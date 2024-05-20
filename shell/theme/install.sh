# Download Oh My Posh

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

# Download the themes

mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes/official_themes
chmod u+rw ~/.poshthemes/official_themes/*.omp.*
rm ~/.poshthemes/themes.zip

mkdir -p ~/.poshthemes/customized_themes/
cp $(pwd)/montys_customized.omp.json ~/.poshthemes/customized_themes/montys_customized.omp.json
chmod u+rw ~/.poshthemes/customized_themes/*.omp.*

# Initialize with shell
echo "" >> ~/.bashrc
echo "# Set shell prompt theme with Oh My Push" >> ~/.bashrc
echo "eval \"\$(oh-my-posh --init --shell bash --config ~/.poshthemes/customized_themes/montys_customized.omp.json)\"" >> ~/.bashrc
source ~/.bashrc

