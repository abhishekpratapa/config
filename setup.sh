#!/bin/sh

find `pwd` -name ".*" | xargs -I {} ln -fs {} ~
