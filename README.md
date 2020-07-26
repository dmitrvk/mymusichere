# MyMusicHere

![build](https://github.com/dmitrvk/mymusichere/workflows/build/badge.svg)
[![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

In this repo you will find sheet music typeset with
[LilyPond](https://lilypond.org).

Compiled versions are available
[here](https://www.mymusichere.me).

The idea of MyMusicHere project is to automate the process
of publishing sheet music that was typeset with the
[LilyPond](http://lilypond.org) system.

The project includes two repositories.
This repository contains the source code of sheet music.
The [second repository](http://github.com/dmitrvk/mymusichere.me)
contains the source code of the [website](http://www.mymusichere.me).

Once uploaded to the master branch of this repository,
a source code in the LilyPond format is compiled with
[GitHub Actions](https://github.com/dmitrvk/mymusichere/actions).
Resulting PDF files and PNG images are sent to the webserver
where the application publishes new scores on the
[website](http://www.mymusichere.me).

Each score has a unique 'slug'.
This allows to create a simple and readable URL for each score, for example,
[https://www.mymusichere.me/june](https://www.mymusichere.me/june).

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
