# dotfiles

## New Development Machine Setup

Setup passwordles sudo for main user:

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
