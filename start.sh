#! /bin/sh

[ -n "$UMASK" ] && umask "$UMASK"

python2.7 /couchpotato/CouchPotato.py --console_log --data_dir=/config/couchpotato --config_file=/config/couchpotato/couchpotato.ini
