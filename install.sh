#!/usr/bin/env bash

############
# includes #
############

source ./colors.sh
source ./install_functions.sh
source ./zsh/zshenv

################
# presentation #
################

echo -e "
${yellow}
          _ ._  _ , _ ._
        (_ ' ( \`  )_  .__)
      ( (  (    )   \`)  ) _)
     (__ (_   (_ . _) _) ,__)
           ~~\ ' . /~~
         ,::: ;   ; :::,
        ':::::::::::::::'
 ____________/_ __ \____________
|                               |
|   Welcome to Mings dotfiles   |
|                               |
|   Ref: Phantas0s/.dotfiles    |
|_______________________________|
"
echo -e "${yellow}!!! ${red}WARNING${yellow} !!!"
echo -e "${light_red}This script will delete all your configuration files!"
echo -e "${light_red}Use it at your own risks."

if [ $# -ne 1 ] || [ "$1" != "-y" ];
    then
        echo -e "${yellow}Press a key to continue...\n"
        read key;
fi

###########
# INSTALL #
###########

. $DOTFILES/install/install-zsh.sh

dot_is_installed git && dot_install git
dot_is_installed npm && dot_install npm
dot_is_installed python && dot_install python
