#!/bin/bash

DOT_FILES=(.vimrc)

for f in ${DOT_FILES[@]}
do
    ln -is ./$f ~/$f
done
