# My dotfiles

## Installing

This repo should be cloned into home directory.

Go to your home directory:

```sh
cd ~
```

Then clone the repo into `.dotfiles` directory:

> **Note**
> I choose `.dotfiles` as directory name so that repo is hidden in home directory.

```sh
git clone https://github.com/phpeek/dotfiles.git
```

## Applying 

I'm using [GNU Stow](https://www.gnu.org/software/stow/) to manage my dotfiles.

In order to link partciular config to Your home directory run:

```sh
stow <dir>
```

