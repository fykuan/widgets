#!/usr/bin/env python3
#-*- coding: utf-8 -*-
from subprocess import check_output


s = 'wttr.in/{}?m'.format(input('Enter city name (default: Taipei):') or 'taipei')
print(check_output('curl -s {} | head -n 6'.format(s), shell=True).decode('utf-8'))
