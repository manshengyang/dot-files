#!/bin/bash

cur=`pwd`
for f in $(find "$cur" -name ".??*"); do
  name=$(basename $f)
  if [[ "$name" != .git ]]; then
    [[ ! -e ~/$name || -L ~/$name ]] && ln -sf "$f" $HOME
  fi
done
