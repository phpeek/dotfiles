# My dotfiles

Using `chezmoi` for multiplatform dotfiles.

Secrets are managed via [1Password](https://1password.com).

Make sure You're signed in [1Password-cli](https://developer.1password.com/docs/cli).

```sh
eval $(op signin)
``` 

Install

```sh
$ sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

