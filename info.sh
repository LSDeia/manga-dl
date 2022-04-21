#!/bin/zsh

MANGA=$1
REQUEST=$(curl -s https://mangasee123.com/directory/ | sed 's,{,\n&,g' | grep $1 )
MANGA_AVAILABLE=$(echo $REQUEST | cut -d '"' -f 4)
STATUS=$(echo $REQUEST | cut -d '"' -f 12)
NBCHAPTER=$(curl -s https://mangasee123.com/manga/$1 | grep 'vm.Chapters = ' | cut -d '{' -f 2 | cut -d '"' -f 4 | cut -b 2-5)

echo MANGA = $MANGA_AVAILABLE
echo NOMBRE DE CHAPITRE = $NBCHAPTER
echo STATUS = $STATUS
