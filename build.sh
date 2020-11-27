#!/usr/bin/env bash

here=$(cd $( dirname "${BASH_SOURCE[0]}" ) && pwd ) 
mkdir -p $here/var

(cd $here/docs
for i in *.md; do
  cat $i |gawk 'NR==1 && sub(/^[#]+[ ]*/,"") { split($0,a,":") 
                        print "- [" a[1] "]('$i') : " a[2]}'
done > $here/docs/index.md)

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
