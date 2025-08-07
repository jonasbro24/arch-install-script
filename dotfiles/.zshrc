if ["$(tty)" = "/dev/tty1" ]; then
    if [ -z "$DISPLAY" ] && [ -z "$WAYLAND_DISPLAY" ]; then
            exec Hyprland
    fi
fi

export PATH="/home/jonas/.local/share/bob/nvim-bin:$PATH"

eval "$(starship init zsh)"
