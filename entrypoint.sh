#!/bin/bash

finish () {
    wg-quick down wg1
    exit 0
}
trap finish SIGTERM SIGINT SIGQUIT

wg-quick up /etc/wireguard/wg1.conf

# Inifinite sleep
sleep infinity &
wait $!
