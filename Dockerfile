FROM ubuntu

RUN sudo apt-get -y install fish htop curl gnupg
RUN sudo chsh user -s $(which fish)

COPY .config/fish /home/user/.config/fish
RUN sudo chown -R user:user ~/.config

LABEL share.gitconfig="~/.gitconfig:~/.gitconfig"
LABEL share.ssh="~/.ssh:~/.ssh"
LABEL share.gnupg="~/.gnupg:~/.gnupg"