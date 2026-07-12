# ~/.profile

# Load .bashrc for login shells
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# Desktop environment
export XDG_CURRENT_DESKTOP=GNOME
export XDG_DATA_DIRS="/usr/share:/usr/local/share"

# GTK theme
export GTK_THEME="Arc-Dark"

# User paths
add_path() {
    case ":$PATH:" in
        *":$1:"*) ;;
        *) PATH="$1:$PATH" ;;
    esac
}

[ -d "$HOME/bin" ] && add_path "$HOME/bin"
[ -d "$HOME/.local/bin" ] && add_path "$HOME/.local/bin"
[ -d "$HOME/.cargo/bin" ] && add_path "$HOME/.cargo/bin"
[ -d "$HOME/.local/opt/nvim/bin" ] && add_path "$HOME/.local/opt/nvim/bin"
if [ -d "$HOME" ]; then
    DWMBLOCKS_PATH=$(find "$HOME" \
        -maxdepth 20 \
        -type d \
        -path "*/dwmblocks/statusbar" \
        2>/dev/null | head -n 1)

    [ -n "$DWMBLOCKS_PATH" ] && add_path "$DWMBLOCKS_PATH"
fi

export PATH
