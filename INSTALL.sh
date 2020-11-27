#!/usr/bin/env bash

which pandoc   || brew install pandoc
which pdflatex || brew install basictex

here=$(cd $( dirname "${BASH_SOURCE[0]}" ) && pwd ) 
mkdir -p $here/var

chmod +x $here/build.sh


