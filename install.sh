#!/bin/bash

DOT_FILES=(.vimrc)

for f in ${DOT_FILES[@]}
do
    link ./$f ~/$f
done
