#!/bin/sh

find `pwd` -name ".*" | grep -v "\/\.git$" | xargs -I {} ln -fs {} ~
