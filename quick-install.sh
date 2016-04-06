#!/bin/bash
if [[ -d "$HOME/bin" ]]; then
  printf "Ah, you've already got a ~/bin directory!\n"
  printf "Do you want to clone it somewhere else? [Yes/No] "
  read YN
  if [[ $YN == "Yes" ]]; then
    printf "Where do you want to clone it?"
    read BIN
    git clone https://github.com/fusion809/bin $BIN
  elif [[ $YN == "No" ]]; then
    printf "Suit yourself!"
  fi
else
  git clone https://github.com/fusion809/bin $HOME/bin
fi
PT=$(echo $PATH | grep "$HOME/bin")
if ! [[ -n $PT ]]; then
  SH=${SHELL##*/}
  if [[ $SH == "bash" ]]; then
    printf 'export PATH=$PATH:$HOME/bin' >> $HOME/.bashrc
    source $HOME/.bashrc
  elif [[ $SH == "zsh" ]]; then
    printf 'export PATH=$PATH:$HOME/bin' >> $HOME/.zshrc
    source $HOME/.zshrc
  fi
fi
