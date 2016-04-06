#!/bin/bash
git clone https://github.com/fusion809/bin $HOME/bin
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
