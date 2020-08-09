# MyMusicHere

[![build](https://img.shields.io/github/workflow/status/dmitrvk/mymusichere/build?color=3e3e3e&style=flat-square)](https://github.com/dmitrvk/mymusichere/actions)
[![License: CC BY-SA 4.0](https://img.shields.io/github/license/dmitrvk/mymusichere?color=3e3e3e&style=flat-square)](https://github.com/dmitrvk/mymusichere/blob/master/LICENCE)

In this repo you will find sheet music typeset with
[LilyPond](https://lilypond.org).

Compiled versions are available at
[www.mymusichere.me](https://www.mymusichere.me).

The idea of MyMusicHere project is to automate the process
of publishing sheet music that was typeset with the
[LilyPond](http://lilypond.org) system.

The project includes two repositories.
This repository contains the source code of sheet music.
The [second repository](http://github.com/dmitrvk/mymusichere.me)
contains the source code of the [website](http://www.mymusichere.me).

[![score](https://raw.githubusercontent.com/dmitrvk/mymusichere/master/score.png)](https://www.mymusichere.me)

Once uploaded to the master branch of this repository,
a source code in the LilyPond format is compiled with
[GitHub Actions](https://github.com/dmitrvk/mymusichere/actions).
Resulting PDF files and PNG images are sent to the webserver
where the application publishes new scores on the
[website](http://www.mymusichere.me).

Each score has a unique 'slug'.
This allows to create a simple and readable URL for each score, for example,
[https://www.mymusichere.me/june](https://www.mymusichere.me/june).

## Licensing

This project is licensed under the
[Creative Commons Attribution Share Alike 4.0 International License](https://github.com/dmitrvk/mymusichere/blob/master/LICENSE).
