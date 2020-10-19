#!/bin/bash

maldet -u -d && maldet -a /root/ && clamscan -ri /root/ ; /opt/sophos-av/bin/savupdate && savscan -f /root/ -p=/root/savscan.log
