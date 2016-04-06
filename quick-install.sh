git clone https://github.com/fusion809/bin $HOME/bin
PT=$(echo $PATH | grep "$HOME/bin")
if ! [[ -n $PT ]]; then
  if [[ $SHELL == "/bin/bash" ]]; then
    printf 'export PATH=$PATH:$HOME/bin' >> $HOME/.bashrc
    source $HOME/.bashrc
  elif [[ $SHELL == "/bin/zsh" ]]; then
    printf 'export PATH=$PATH:$HOME/bin' >> $HOME/.zshrc
    source $HOME/.zshrc
  fi
fi
