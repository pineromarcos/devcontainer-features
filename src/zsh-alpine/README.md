# zsh-alpine 

Installs zsh with OhMyZsh on alpine. 

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
    "ghcr.io/pineromarcos/devcontainer-features/zsh-alpine:latest": {
        "theme": "agnoster",
        "username": "root"
    }
}
```