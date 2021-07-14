#!/usr/bin/env bash

[[ ":$PATH:" != *":$HOME/bin3:"* ]] && echo -e "\nexport PATH='$HOME/bin3:$PATH'" >> $HOME/.bashrc && source $HOME/.bashrc
