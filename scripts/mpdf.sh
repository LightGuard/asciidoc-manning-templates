#!/bin/sh

# You must set BOOK_HOME to the home folder for your book project
# BOOK_HOME=/Users/habuma/Projects/BookProjects/walls.sia4

MAKEPDF_HOME=$BOOK_HOME/AAMakePDF/

pushd .
cd $BOOK_HOME
mkdir -p $BOOK_HOME/target/pdf
sh $MAKEPDF_HOME/AAMakePDF.sh $BOOK_HOME/docbook/$1.xml $BOOK_HOME/target/pdf/$1.pdf $MAKEPDF_HOME
rm $BOOK_HOME/docbook/$1.xml.temp.xml
popd
