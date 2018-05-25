#!/usr/bin/python

import os

host_os = os.uname()[0]

if host_os == 'Darwin':
    group = 'macos'
else:
    group = 'linux'

print """
{
  "%s": {
    "hosts": [
      "localhost"
    ],
    "vars": {
      "ansible_connection": "local"
    }
  }
}
""" % group
