# openspec-alpine

Installs the [OpenSpec](https://github.com/Fission-AI/OpenSpec) CLI on Alpine. Requires Node.js/npm to be available in the image.

## Options

| Option key | Type   | Default | Description                                      |
|------------|--------|---------|--------------------------------------------------|
| version    | string | latest  | OpenSpec version to install (e.g. 1.13.2)        |

## Example Usage

```json
"features": {
    "ghcr.io/pineromarcos/devcontainer-features/openspec-alpine:latest": {
        "version": "latest"
    }
}
```
