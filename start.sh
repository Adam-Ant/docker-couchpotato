#!/bin/sh
set -e

chown $UID:$GID /config

exec su-exec python /couchpotato/CouchPotato.py --console_log --data_dir=/config --config_file=/config/couchpotato.ini
