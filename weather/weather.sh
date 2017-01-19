#!/usr/bin/env bash

ping -c 1 -t 1 8.8.8.8 > /dev/null
if [ $? == 0 ]; then
    python3 -c "from subprocess import check_output; s = 'wttr.in/{}?m'.format(input('Enter city name (default: Taipei):') or 'taipei'); print(check_output('curl -s {} | head -n 6'.format(s), shell=True).decode('utf-8'));"
fi
