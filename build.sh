#!/usr/bin/env bash

here=$(cd $( dirname "${BASH_SOURCE[0]}" ) && pwd ) 
mkdir -p $here/var

pandoc                                  \
  -N                                     \
  --template=$here/etc/template.tex                 \
  --variable mainfont="Palatino"           \
  --variable sansfont="Helvetica"           \
  --variable monofont="Menlo"                \
  --variable fontsize=9pt                     \
  --variable version=2.0                       \
  $here/CONFIG.md $here/README.md $here/LICENSE.md $here/docs/*.md  \
  --pdf-engine=pdflatex                          \
  --toc                                           \
  -o $here/var/patterns.pdf

ls -s $here/var/patterns.pdf
