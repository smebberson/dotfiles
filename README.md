# dotfiles

My dotfiles, my portable bash customisations. All based on bash.

## OS Details

These dotfiles have been designed to work on Mac and Linux (tested on Ubuntu only).

## Requirements

The following setup, and applications are expected for these dotfiles to function correctly:

- Git, >2.0.1 (at `/usr/local/git/bin/git` on Mac)

## Setup

1. Download this repository into:
    - Linux: `/projects/dotfiles`.
    - Mac: `/Library/Web/dotfiles`.
1. Execute `cd /Library/Web/dotfiles`.
1. Create either a `.mac` or `.linux` file with `touch .mac` in this repository's directory.
1. Execute `./install`.

_For Mac_, everything should be working now.

_For Ubuntu_, follow these additional steps:

1. Add the following to ~/.bashrc

```sh
if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile
fi
```
