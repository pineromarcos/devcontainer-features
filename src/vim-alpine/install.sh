
#!/bin/sh
set -e

echo "Installing vim..."

ZSH_THEME=${THEME:-"agnoster"}

apk add --no-cache \
  vim


echo "vim Installed"