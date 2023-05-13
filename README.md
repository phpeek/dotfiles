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
git clone https://github.com/phpeek/dotfiles.git .dotfiles
```

## Applying 

I'm using [GNU Stow](https://www.gnu.org/software/stow/) to manage my dotfiles.

In order to link partciular config to Your home directory run:

Go to repo:

```sh
cd ~/.dotfiles
```

And then `stow` particular directory to link config to Your home directory.

```sh
stow <dir>
```

E.g. if You want to use my `nvim` config run:

```sh
stow nvim
```
