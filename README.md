# Max533 Personal Dotfiles

These are config file to setup my linux system

## Components

- VSCode
  - Preference Settings
  - Extension

- Python
  - Pyenv
  - Pipx

- Shell
  - Bash
  - Font
  - Theme: Oh My Posh -> Montys

## How to use it

Pre-require tool: `git` and `sudo` command

```bash
sudo apt install -y git sudo
```

Type below command to install all components in your development environment.

```bash
git clone https://github.com/max533/dotfile.git $HOME/dotfile;
cd $HOME/dotfile;
./setup.sh;
```

## With Ubuntu Container (Optional)

If you want to use it in ubuntu container as your development environment, please follow below step to install.

1. Set up time zone and language setting(use `root` role to perferm below command)

    - Resolve locale setting problem

        ```bash
        echo 'tzdata tzdata/Areas select Asia' | debconf-set-selections;
        echo 'tzdata tzdata/Zones/Asia select Taipei' | debconf-set-selections;
        DEBIAN_FRONTEND="noninteractive" apt install -y tzdata;
        ```

    - Resolve auto setting time zone problem

        ```bash
        apt install -y locales;
        locale-gen en_US.UTF-8;
        export LANG=en_US.UTF-8;
        export LANGUAGE=en_US.UTF-8;
        export LC_ALL=en_US.UTF-8;
        dpkg-reconfigure --frontend=noninteractive locales;
        ```

2. Add normal user, add user to sudo group and reset password in container

    ```bash
    useradd -ms /bin/bash [username]
    usermod -aG sudo [username]
    passwd [username]
    ```

3. Change root user to normal user

    ```bash
    su [username]
    ```

4. Then please repeat `How to use it` part

## With Ubuntu Container and VSCode (Optional)

If you want to use it in ubuntu container as your development environment with editor VSCode. You can set named container setting to avoid change root user to normal user problem every time.

Press `F1` in `VSCode` Editor -> `Remote-Contianers : Open Named Container Configuration File` -> Paste below json and save

```json
{
    "remoteUser": "{username}",
    "workspaceFolder": "/home/{username}",
}
```
