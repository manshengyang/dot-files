#!/bin/bash

cd $(dirname $(dirname $(readlink -f $0)))
cur=`pwd`
echo $cur
if [[ $(basename $cur) != "dot-files" ]]; then
  echo "Invalid dir"
  exit 1
fi
for f in $(find "$cur" -name ".??*"); do
  name=$(basename $f)
  if [[ "$name" != .git ]]; then
    echo "link $name"
    [[ ! -e ~/$name || -L ~/$name ]] && ln -sf "$f" $HOME
  fi
done
