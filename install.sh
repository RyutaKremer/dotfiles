#!/bin/bash

DOT_FILES=(.vimrc .ideavimrc)
DIR_PATH=$(cd $(dirname $0); pwd)

for f in ${DOT_FILES[@]}
do
    ln -is $DIR_PATH/$f ~/$f
done
