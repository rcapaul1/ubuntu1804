#!/bin/bash

maldet -u -d && maldet -a /root/ && clamscan -fi /root/ && /opt/sophos-av/bin/savupdate && savscan -f /root/ -p=/root/savscan.log
