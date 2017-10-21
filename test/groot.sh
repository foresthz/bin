#!/bin/bash
groot() {
  if [ -d .git ]; then
    return 0
  fi

  F=..
  while ! [ -d $F/.git ]; do
    F="$F/.."
  done
  cd $F
}

#git_root 
