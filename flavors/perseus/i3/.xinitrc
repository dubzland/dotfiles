#!/usr/bin/env bash

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

# Source system init scripts
if [[ -d /etc/X11/xinit/xinitrc.d ]]; then
	for f in /etc/X11/xinit/xinitrc.d/?*; do
		[[ -x "$f" ]] && source "$f"
	done
	unset f
fi

# Load .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Load Base16 theme
themes_dir="${XDG_CONFIG_HOME}/tinted-theming/base16-xresources/xresources"
if [[ -n "${BASE16_THEME}" ]]; then
	theme_file="${themes_dir}/base16-${BASE16_THEME}-256.Xresources"
	[[ -r "${theme_file}" ]] && xrdb -merge "$theme_file"
fi

# Set X screen saver arguments
# s noblank - do not blank screen when triggering screen saver
# s 300 - trigger screen saver after 5 minutes
# dpms 0 0 0 - Monitor control timeouts (standby, suspend, off)
# The above dpms settings completely disable dpms (monitor never turns off)
xset s noblank s 300 dpms 0 0 0

# Generate the i3 configuration file
i3-merge-config >/dev/null

exec i3 -d all > /home/jdubz/i3.log
