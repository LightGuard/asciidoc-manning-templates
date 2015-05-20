#!/bin/sh

# You must set BOOK_HOME to the home folder for your book project
# BOOK_HOME=$HOME/Projects/BookProjects/walls.sia4

MAKEPDF_HOME=$BOOK_HOME/AAMakePDF/

asciidoctor --trace -T $BOOK_HOME/asciidoc -a chapterFilename=$1 -b docbook45 -o $BOOK_HOME/docbook/$1.xml $1.adoc
awk -f $BOOK_HOME/asciidoc/scripts/cofix.awk $BOOK_HOME/docbook/$1.xml > $BOOK_HOME/target/$1.fixed
mv $BOOK_HOME/target/$1.fixed $BOOK_HOME/docbook/$1.xml
