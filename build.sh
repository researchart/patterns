#!/usr/bin/env bash

read -p "Have you already run sh INSTALL.shi (y/n)? " answer
case ${answer:0:1} in
    y|Y ) true ;;
    *   ) exit ;;
esac

here=$(cd $( dirname "${BASH_SOURCE[0]}" ) && pwd ) 
mkdir -p $here/var


(cd $here/docs
echo "# Contents : our road map"
echo ""
for i in *.md; do
  cat $i |gawk 'NR==1 && sub(/^[#]+[ ]*/,"") { split($0,a,":") 
                        print "- [" a[1] "]('$i') : " a[2]}'
done 
echo ""
cat $here/README.md
) > $here/docs/index.md

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
  -o $here/var/patterns.tex

cat $here/var/patterns.tex |
gawk '/begin{longtable}/ { gsub(/@\{\}/,""); sub(/\\begin{longtable}/,"\\begin{table}\\begin{tabular}")}
      /end{longtable}/   { sub(/\\end{longtable}/,"\\end{tabular}\\end{table}") }
                         { gsub(/endfirsthead/,""); print $0 }
' > $here/var/tmp.tex
mv $here/var/tmp.tex $here/var/patterns.tex 
mkdir -p $here/var/etc/img
cp $here/etc/img/*  $here/var/etc/img

cd $here/var
pdflatex patterns
ls -s $here/var/patterns.pdf

