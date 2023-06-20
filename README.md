# My dotfiles

Using [chezmoi](https://www.chezmoi.io) for multiplatform dotfiles.

```sh
$ sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

Secrets are managed via [1Password](https://1password.com).

Make sure You're signed in [1Password-cli](https://developer.1password.com/docs/cli).

```sh
eval $(op signin)
``` 

