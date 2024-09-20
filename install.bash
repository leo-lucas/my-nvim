#!/bin/bash
# Autorize script
# chmod +x install.sh
# Atualizar pacotes
sudo apt update -y

# Instalar o Zsh
sudo apt install zsh -y

# Instalar o Zinit (gerenciador de plugins para Zsh)
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Alterar o shell padrão para Zsh (opcional)
chsh -s $(which zsh)

# Instalar Neovim e Git
sudo apt install neovim git -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
