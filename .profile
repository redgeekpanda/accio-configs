export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export EDITOR=subl3
export BROWSER=chromium

enable_natural_scrolling () {
  local DEVICE_ID=$(xinput list | grep Touchpad | sed -E 's/^.*id=([[:digit:]]+).*$/\1/')
  local PROPERTY_ID=$(xinput list-props $DEVICE_ID | grep 'Natural Scrolling Enabled (' | sed -E 's/^.*\(([[:digit:]]+)\).*$/\1/')
  xinput set-prop $DEVICE_ID $PROPERTY_ID 1
}

if [[ -n ${DISPLAY} ]]; then

  # Configure keyboard layouts
  setxkbmap us,ru,ua -option grp:alt_shift_toggle

  enable_natural_scrolling
fi
