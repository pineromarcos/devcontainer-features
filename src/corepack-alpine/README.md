# corepack-alpine

Enables Corepack modules on Alpine.

## Options

| Option key | Type    | Default | Description          |
|------------|---------|---------|---------------------|
| pnpm       | boolean | true    | Enable PNPM support |

## Example Usage

```json
"features": {
    "ghcr.io/pineromarcos/devcontainer-features/corepack-alpine:latest": {
        "pnpm": true
    }
}
