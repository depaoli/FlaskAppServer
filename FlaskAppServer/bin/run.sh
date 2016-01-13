#!/usr/bin/env bash

#
# Initialize /var tree for logs, PID, etc.
#
mkdir -p var/run/
chown -R nobody:nogroup var/run/

mkdir -p var/log/supervisord
chown -R nobody:nogroup var/log/supervisord

# Pass the control to supervisord
supervisord -c etc/supervisord/supervisord.conf
