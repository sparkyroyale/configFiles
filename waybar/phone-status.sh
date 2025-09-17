# Check KDE Connect first
if kdeconnect-cli --list-available --id-only | grep -q .; then
    echo '{"text": " 📱 ", "tooltip": "Phone Connected (KDE Connect)", "class": "connected"}'
    exit 0
fi

# Then check Bluetooth 
if bluetoothctl info | grep -q "Galaxy S21"; then
    echo '{"text": " 📱 ",, "tooltip": "Phone Connected (Bluetooth)", "class": "connected"}'
else
    echo '{"text": " 📵 ", "tooltip": "Phone Disconnected", "class": "disabled"}'
fi

