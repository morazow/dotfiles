# dotfiles

## Setup Development Machine

Setup passwordless sudo for main user:

Add these to the `/etc/sudoers.d/<USER>` file:

```txt
<USER> ALL=(ALL) NOPASSWD: ALL
```

Install initial essential command line tools:

```sh
sudo apt install software-properties-common build-essential apt-transport-https ca-certificates -y
sudo apt install vim git curl wget -y
```

Install Python 3 version:

```sh
sudo apt install python3 python3-pip -y
```

Install Ansible tools:

Ensure that the `pip` is installed:

```sh
python3 -m pip -V
```

Install `ansible`:

```sh
python3 -m pip install --user ansible
```

Run minimal development machine setup:

```sh
~/.local/bin/ansible-playbook playbook.yml
```

Restart and select `Regolith` as window manager on the next login.

## Setup Java

List the available Java versions:

```sh
sdk list java
```

Install Java 17 and 11 Temurin versions:

```sh
sdk install java 17.0.6-tem
sdk install java 11.0.18-tem
```

Set Java 11 as default:

```sh
sdk default java 11.0.18-tem
```

### Build Java Tools

Build `eclipse.jdt.ls`, it is required for `java-debug`:

```sh
cd ~/Devel/git/tools/eclipse.jdt.ls/
./mvnw clean install -DskipTests
```

Build `java-debug`:

```sh
cd ~/Devel/git/tools/java-debug/
./mvnw clean install -DskipTests
```

Build `vscode-java-test`:

```sh
cd ~/Devel/git/tools/vscode-java-test/
npm i && npm run build-plugin
```

## Install Coursier

Like Java installations, install coursier:

```sh
curl -fLo coursier https://github.com/coursier/launchers/raw/master/coursier
mv coursier ~/.local/bin/
chmod +x ~/.local/bin/coursier
```

## Clean Neovim State

Remove `neovim` folders for fresh start:

```sh
rm -rf ~/.local/share/nvim/*
rm -rf ~/.local/state/nvim/*
rm -rf ~/.cache/nvim/*
```
