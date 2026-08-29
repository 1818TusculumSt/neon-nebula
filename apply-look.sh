#!/usr/bin/env bash
# Applies the Neon Nebula window look (rounded corners, blur, glow shadows,
# cyan->magenta->purple gradient border) to this machine's Hyprland config.
#
# Omarchy strips .lua files from themes installed from git repos, so the theme
# itself can't apply this — run this script once instead:
#
#   bash ~/.config/omarchy/themes/neon-nebula/apply-look.sh

set -euo pipefail

THEME_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HYPR_DIR="$HOME/.config/hypr"

if [[ -f $HYPR_DIR/looknfeel.lua && ! -f $HYPR_DIR/looknfeel.lua.neon-orig ]]; then
  cp "$HYPR_DIR/looknfeel.lua" "$HYPR_DIR/looknfeel.lua.neon-orig"
fi

cp "$THEME_DIR/looknfeel.lua" "$HYPR_DIR/looknfeel.lua"
echo "Neon look applied. Reverting: mv $HYPR_DIR/looknfeel.lua.neon-orig $HYPR_DIR/looknfeel.lua"
