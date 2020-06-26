export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
exec xset -dpms &
exec xset s off &
exec xrandr --output HDMI-0 --auto --primary --output DP-0 --auto --rotate left --right-of HDMI-0 &
exec unclutter &
exec picom -CGb --config ~/.config/picom/picom.conf &
exec nitrogen --restore &
exec fcitx -d &
exec emacs --daemon &
exec udiskie --no-notify --tray --file-manager pcmanfm &
exec i3
