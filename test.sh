#!/usr/bin/env bash

[[ ":$PATH:" != *":$HOME/bin2:"* ]] && echo -e "\nexport PATH='$HOME/bin2:$PATH'" >> $HOME/.bashrc && source $HOME/.bashrc
