# manga-DL

## Description

manga-DL is a script (codé avec le cul) which allows users to download manga chapters from https://mangasee123.com.  
All chapters are in english, and are compressed in cbz archive (zip archive renamed), it's a common archive format for comics.  
If you just want the images please remove the zip line in manga.sh.  
This script might not work for everyone, it can break or bug.
I'm not responsible for any dommage it can cause.

## Requirements

* zsh
* curl
* evince
* zip

## Usage

```shell
git clone https://gitlab.iut-clermont.uca.fr/rearnal/manga-dl.git
cd manga-DL
chmod u+x *.sh
```

To read the chapter please use evince with -s option for better experience.
```evince -s One-Piece - 1046.cbz```

## Option

* i -> Get info about the manga (nb chapter and status) ```./manga.sh i Tougen-Anki```
* d -> Download a specific chapter ```./manga.sh d Tougen-Anki 45```
* b -> Batch download chapters between two chapters ```./manga.sh b Tougen-Anki 10 20```
* a -> Download all chapter ```./manga.sh a Tougen-Anki```

**You must replace spaces in manga name by dashes ("-") and fisrt letter of each word must be in caps.**

## Errors

If evince can't read the archive :

* The manga name isn't good, the script won't tell you, (check your manga url on https://mangasee123.com)

* Your chapter isn't already existing

* Bug because i make this in 2h
