source /usr/share/cachyos-fish-config/cachyos-config.fish

# Disable the default CachyOS greeting
function fish_greeting
end

# Fixed Static Fastfetch Layout (Will never shift or change on fullscreen)
if status is-interactive
    if test "$TERM" = xterm-kitty
        set RANDOM_LOGO (find ~/.config/fastfetch/logos/ -type f -name "*.png" | shuf -n 1)

        if test -n "$RANDOM_LOGO"
            # Forces a strict side-by-side box on the left
            fastfetch --logo-type kitty --logo "$RANDOM_LOGO" --logo-width 28 --logo-height 12 --logo-position left --logo-print-remaining false
        else
            fastfetch
        end
    else
        fastfetch
    end
end
