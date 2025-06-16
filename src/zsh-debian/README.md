# zsh-debian 

Installs zsh with OhMyZsh on debian. 

## Plugins

- zsh-autosuggestions
- git

## Options

| Optionkey | Description | Type | Default Value |
|-----|-----|-----|-----|
| theme | Change the default theme  | string | agnoster |
| username | Change the default user  | string | root |


## Example Usage

```json
"features": {
    "ghcr.io/pineromarcos/devcontainer-features/zsh-debian:latest": {
        "theme": "agnoster",
        "username": "root"
    }
}
```