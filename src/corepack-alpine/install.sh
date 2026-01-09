
#!/bin/sh
set -e

echo "Installing Corepack..."

ENABLE_PNPM=${PNPM:-true}

corepack enable

if [ "$ENABLE_PNPM" = "true" ]; then
    echo "Installing PNPM via Corepack..."
    corepack prepare pnpm@latest --activate
    echo "PNPM installed: $(pnpm --version)"
fi

echo "Corepack setup complete"