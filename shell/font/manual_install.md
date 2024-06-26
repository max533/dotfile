# 遠端開發模式下設定 VSCode 之編輯器和終端機字體

## 1. 本地端 (WSL/SSH/Containers) 的 VSCode 字體做設定

### (A) 本地端是 Window 環境 (適用情境：WSL / SSH / Windows / Containers)

下載字體直接點右鍵安裝在 Windows 環境

Terminal (字體需要有等寬) -> [MesloLGM Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.zip)

Editor -> [Cascadia Code](https://github.com/microsoft/cascadia-code/releases)

### (B) 本地端是 Linux 環境 (適用情境：SSH / Linux / Containers)

下載字體安裝在 Linux 環境下

```bash
echo "Download fonts";
echo "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.zip";
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.zip;
echo "https://github.com/microsoft/cascadia-code/releases/download/v2111.01/CascadiaCode-2111.01.zip";
wget https://github.com/microsoft/cascadia-code/releases/download/v2111.01/CascadiaCode-2111.01.zip;
sudo apt update;
sudo apt install -y unzip fontconfig;
unzip Meslo.zip -d ~/.fonts;
unzip CascadiaCode-2111.01.zip -d ~/.fonts;
fc-cache -fv;
rm -rf Meslo.zip CascadiaCode-2111.01.zip
echo "Done!";
```

## 2. 本地端的 VSCode 使用者的 settings.json 套用下列設定

```json
{
    // Font Setting
    "editor.fontFamily": "Cascadia Code",
    "terminal.integrated.fontFamily": "MesloLGM Nerd Font",
    "editor.fontLigatures": true,
}
```

## 3. Reference

- 字型預覽 <https://www.programmingfonts.org/>
- Terminal 字型下載 <https://www.nerdfonts.com/font-downloads>
- Editor 字型下載 <https://github.com/microsoft/cascadia-code/>
