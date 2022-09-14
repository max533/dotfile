OS_REQUIREMENTS_FILENAME="requirements-focal.apt"

function list_packages(){
    grep -v "#" "${OS_REQUIREMENTS_FILENAME}" | grep -v "^$";
}

sudo apt update;
list_packages | xargs sudo apt install -y ;
