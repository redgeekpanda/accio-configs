export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export EDITOR=subl3
export BROWSER=chromium

if [[ -n ${DISPLAY} ]]; then
  setxkbmap us,ru,ua -option grp:alt_shift_toggle
  # xinput set-prop 11 298 1
fi
