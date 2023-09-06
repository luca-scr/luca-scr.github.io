#!/bin/bash  
#======================================================================
#
# A script to create _index.md containing the list of publications from
# ~/Documents/CV/list_of_publications.tex
#
# Usage:
# 
# 0) set working directory
# > cd /Users/luca/Documents/www_new/content/publication/
# 
# 1) update publications
# > mate /Users/luca/Documents/CV/list_of_publications.tex
# 
# 2) create _index.md using
# > ~/Documents/www_new/content/publication/publication.sh
#    
# 3) (optional) add/delete/modify publication*.md files
# 
#======================================================================

FILEOUT="_index.md"
echo "+++" > $FILEOUT
echo "title = \"Publications\"" >> $FILEOUT
echo "date = \"$(date '+%Y-%m-%d %H:%M:%S %Z')\"" >> $FILEOUT
echo "math = false" >> $FILEOUT
echo "highlight = false" >> $FILEOUT
echo "+++" >> $FILEOUT
echo "" >> $FILEOUT
# convert .tex to .md 
pandoc -f latex -t markdown /Users/luca/Documents/CV/list_of_publications.tex -o $FILEOUT
# clean sections, bibitem, ...
sed -i '' 's/{#.*//' $FILEOUT
sed -i '' 's/:::.*//' $FILEOUT