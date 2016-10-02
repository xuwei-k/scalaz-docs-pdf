#!/bin/bash

set -e

cd ./scalaz-docs
wget https://raw.githubusercontent.com/paulp/sbt-extras/964ee32c43/sbt
chmod +x sbt
./sbt -J-Xmx2560m scalazDiagram tut
cd -
cp ./scalaz-docs/gitbook/book.json ./
for f in ./img/*.svg
do
  if [[ $f =~ \./img/(.*)\.svg ]]; then
    inkscape -z -D --file=`pwd`/img/${BASH_REMATCH[1]}.svg --export-pdf=`pwd`/${BASH_REMATCH[1]}.pdf --export-latex=`pwd`/${BASH_REMATCH[1]}.pdf_tex
  fi
done
mkdir target
for f in ./scalaz-docs/gitbook/*.md
do
  if [[ $f =~ \./scalaz-docs/gitbook/(.*)\.md ]]; then
    cp $f ./target/
    pandoc -o "./target/${BASH_REMATCH[1]}.tex" -f markdown_github+footnotes+header_attributes-hard_line_breaks-intraword_underscores --latex-engine=lualatex --chapters --listings --filter=filter.py $f
  fi
done

