# Install local utilities
if test "$(id -u)" -gt "0" && test -d "$HOME"; then
    if test ! -e "$HOME"/.local/bin; then
        mkdir -p $HOME/.local/bin
        curl -Lo $HOME/.local/bin/host-spawn https://github.com/1player/host-spawn/releases/download/1.4.0/host-spawn-x86_64
        chmod +x $HOME/.local/bin/host-spawn
    fi
fi