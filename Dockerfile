FROM ubuntu

RUN apt update
# iNSTALL zsh
RUN apt install zsh -y

#  install Zinit
RUN bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)" -y

# RUN chsh -s $(which zsh)

RUN apt install neovim git -y

# Verificar esta linha mais tarde
# RUN  apt install git build-essential cmake git pkg-config libtool g++ libunibilium4 libunibilium-dev \
#  ninja-build gettext libtool libtool-bin autoconf automake unzip curl doxygen lua-term lua-term-dev luarocks

RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

