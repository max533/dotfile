VSCODE_EXTENSIONS_LIST_FILENAME="extensions.txt"

function list_packages(){
    grep -v "#" "${VSCODE_EXTENSIONS_LIST_FILENAME}" | grep -v "^$";
}

# Install Remote Server Extension
list_packages | xargs -n 1 -t code --force --install-extension
