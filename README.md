# Meus dotfiles
Esse diretorio contem os dotfiles para meu sistema
## Requerimento
Certifique-se de ter instalado no seu sistema.
## Git
```
sudo apt install git
```
## Stow
```
sudo apt-get install stow
```
# Instalação
Crie uma pasta dentro da sua $HOME
```
mkdir dotfiles
```
Clone o repositorio na sua maquina.
```
$ git clone https://github.com/Diegosillva/Dotfiles.git
```
Depois execute o install.sh dentro da sua pasta Dotfiles.
```
run install.sh
```
Então use GNU stow para criar links simbólicos.
```
$ stow .
```

