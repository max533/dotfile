# VSCode Guide

## 1. 手動安裝 VSCode IDE

- [Linux](https://code.visualstudio.com/docs/setup/linux)
- [Windows](https://code.visualstudio.com/docs/setup/mac)
- [MacOS](https://code.visualstudio.com/docs/setup/mac)

## 2. 手動安裝 VSCode 套件

### 2-1. Concept

Extensions 在 VSCode 中有兩種，分別是`UI/Theme Extensions`和`WorkSpace Extensions`，該兩種不同種類的套件，會依據您的開發環境(本地端/遠端)去做不同設定，在 `~/dotfile/vscode/.vscode/settings.json` 裡面分別都有描述，關於遠端開發 `VSCode Extensions` 架構說明可以參考[官方網站](https://code.visualstudio.com/api/advanced-topics/remote-extensions#architecture-and-extension-kinds)，下圖為架構示意圖

![alt remote extensions](https://code.visualstudio.com/assets/api/advanced-topics/remote-extensions/architecture.png)

### 2-2. How to do

打開專案(Single WorkSpace/Multi-WorkSpace)，並複製 `~/dotfile/vscode/.vscode` 資料夾到 `VSCode` 專案開發的根目錄底下，系統會跳出提示安裝建議 `Extensions` (也就是列在 `extensions.json` 中的套件)，系統若無自行跳出，請到 `Panel` 處點選 `Extensions` 圖示，並在搜尋欄填入以下關鍵字 `@recommended` ，在`WORKSPACE RECOMMENDATIONS` 點下安裝 `Install Workspace Recommended Extensions` 所有 `Workspace Extension` 即可自動完成安裝。

以下套件為須自行在 `Extensions` 處自行手動安裝的套件，因為以下套件為 `UI/Theme Extensions`或選擇性的套件而非 `WorkSpace Extensions` 或必要套件

- `File Icon`

    pkief.material-icon-theme (Optional)

- `Remote Development`

    ms-vscode-remote.vscode-remote-extensionpack (Optional)
