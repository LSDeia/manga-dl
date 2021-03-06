#!/bin/zsh

MANGA=$1

NBCHAPTER=$(curl -s https://mangasee123.com/manga/$1 | grep 'vm.Chapters = ' | cut -d '{' -f 2 | cut -d '"' -f 4 | cut -b 2-5)

echo MANGA = $MANGA
echo NOMBRE DE CHAPITRE = $NBCHAPTER
echo -n "Do you really want to download all $NBCHAPTER of $MANGA ? [y/n] : "

read RES

#if [ RES='y' ]
#then
#    ./batch.sh $1 0 $NBCHAPTER
#else
#    exit
#fi

case "${RES}" in
	"")         echo "No answer"; exit 1 ;;
    y)     echo DOWNLOAD WILL BEGIN; sleep 1; ./batch.sh $1 0 $NBCHAPTER;;
    n)     echo DOWNLOAD ABORTED; exit 1;;
    *)          echo "Unknown res '${RES}'."; exit 1 ;;
esac
