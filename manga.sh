#!/bin/zsh

MANGA=$1
CHAPTER=$2
SITE=$(curl -s https://mangasee123.com/read-online/$MANGA-chapter-$CHAPTER.html | grep "vm.CurPathName = \"" | cut -d '"' -f 2)
SOURCE=https\:\/\/$SITE\/manga
PAGE=$(curl -s https://mangasee123.com/read-online/$MANGA-chapter-$CHAPTER.html | grep "vm.CurChapter = {" | cut -d '"' -f 12)
ZIP=$MANGA\ \-\ $CHAPTER.cbz

echo MANGA = $MANGA
echo CHAPTER = $CHAPTER
echo PAGE = $PAGE
echo SITE = $SITE
echo SOURCE = $SOURCE
echo CURL = $SOURCE/$MANGA/$CHAPTER-0$PAGE.png --output $PAGE.png
echo ZIP = $ZIP

if [ $CHAPTER -lt 1000 ]
then
   CHAPTER=0$CHAPTER
fi

if [ $CHAPTER -lt 100 ]
then
    CHAPTER=0$CHAPTER
fi

if [ $CHAPTER -lt 10 ]
then
    CHAPTER=0$CHAPTER
fi

for i in {1..$PAGE}
do
    if [ $i -lt 10 ]
    then
        i=0$i
    fi
    curl -s $SOURCE/$MANGA/$CHAPTER-0$i.png --output $i.png
    echo IMAGE $i/$PAGE DOWNLOADED
done

zip $ZIP *.png &>/dev/null

echo IMAGES COMPRESSE -\> $ZIP

rm -rf *.png
