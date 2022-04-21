# manga-DL

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
* b -> Download all chapter between the two chapters ```./manga.sh b Tougen-Anki 10 20```
* a -> Downloal all chapter ```./manga.sh a Tougen-Anki```

You must replace spaces in manga name by dashes ("-") and fisrt letter of each word must be in caps.

## Error

If evince can't read the archive :

* The manga name isn't good, the script won't tell you, (check on mangasee123.com the url of your manga)

* Your chapter isn't already existing

* Bug because i make this in 2h
