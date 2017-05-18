#!/bin/bash

test -x /etc/samba/smb-init.sh && /etc/samba/smb-init.sh

/usr/sbin/smbd -D
