alias cisco="/opt/cisco/anyconnect/bin/vpnui"

function ssid-wifi() {
  echo "$(nmcli -t -f active,ssid dev wifi | awk '/^yes:/' | awk -F ':' '{print $2}')"
}

function con-new-wifi() {
  nmcli device wifi connect "$1"
}

function con-wifi() {
  nmcli con up id "$1"
}

function list-cons() {
  nmcli connection
}
