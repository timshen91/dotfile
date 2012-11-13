xset r rate 300 30
xrdb .Xresources
xmodmap .Xmodmap
xcompmgr &

if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
   # if not found, launch a new one
   eval `dbus-launch --sh-syntax --exit-with-session`
   echo "D-Bus per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
fi
# Start a D-Bus session
source /etc/X11/xinit/xinitrc.d/30-dbus
# Start GNOME Keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# You probably need to do this too:
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID

exec awesome
