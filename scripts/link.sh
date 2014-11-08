cur=`pwd`
for f in $(find "$cur" -name ".??*")
do
  if [ "$f" != "$cur/.git" ]
  then ln -sf "$f" $HOME
  fi
done
