#!/bin/zsh

case "${1}" in
	"")         echo "No option was specified."; exit 1 ;;
    a)          echo DOWNLOAD ALL EXISTING CHAPTER; echo '----------'; ./all.sh $2;;
    b)          echo DOWNLOAD FROM CHAPTER $3 to CHAPTER $4; echo '----------'; ./batch.sh $2 $3 $4;;
    d)          echo DOWNLOAD CHAPTER $3; echo '----------'; ./download.sh $2 $3;;
    i)          echo INFO; echo '----------'; ./info.sh $2;;
    *)          echo "Unknown option'${1}'."; exit 1 ;;
esac
