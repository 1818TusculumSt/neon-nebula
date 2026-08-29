# Neon Nebula

A cyan / magenta / purple neon theme for [Omarchy](https://omarchy.org),
built around the WOJAK in-space wallpaper.

## Install

```
omarchy theme install https://github.com/1818TusculumSt/neon-nebula
```

That applies the colors, wallpaper, lock screen palette, keyboard RGB, and
icons.

## The neon look (glow, blur, rounded corners)

Omarchy does not let git-installed themes ship Lua, so the window look is a
one-time extra step:

```
bash ~/.config/omarchy/themes/neon-nebula/apply-look.sh
```

This enables rounded corners, blur, glow shadows, and the cyan→magenta→purple
gradient border by writing `~/.config/hypr/looknfeel.lua` (the previous file
is backed up as `looknfeel.lua.neon-orig`). It is global Hyprland styling and
applies to every theme on that machine.

Revert with:

```
mv ~/.config/hypr/looknfeel.lua.neon-orig ~/.config/hypr/looknfeel.lua
```
