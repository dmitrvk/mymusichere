# MyMusicHere

[![CI/CD](https://img.shields.io/github/workflow/status/dmitrvk/mymusichere/deploy?color=373737&label=CI%2FCD&style=flat-square)](https://github.com/dmitrvk/mymusichere/actions)
[![License: CC BY-SA 4.0](https://img.shields.io/github/license/dmitrvk/mymusichere?color=373737&style=flat-square)](https://github.com/dmitrvk/mymusichere/blob/master/LICENCE)

The idea of MyMusicHere project is to automate the process
of publishing sheet music that was typeset with the
[LilyPond](http://lilypond.org) system.

The project includes two repositories.
This repository contains the source code of sheet music.
The [second repository](http://github.com/dmitrvk/mymusichere.me)
contains the source code of the [website](http://www.mymusichere.me).

[![score](https://raw.githubusercontent.com/dmitrvk/mymusichere/master/score.png)](https://www.mymusichere.me)

Each score has a unique
[slug](https://docs.djangoproject.com/en/3.1/glossary/#term-slug).
This allows to create a simple and readable URL for each score, for example,
[https://www.mymusichere.me/june](https://www.mymusichere.me/june).

## Licensing

This project is licensed under the
[Creative Commons Attribution Share Alike 4.0 International License](https://github.com/dmitrvk/mymusichere/blob/master/LICENSE).
