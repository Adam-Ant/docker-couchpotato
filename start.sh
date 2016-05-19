#! /bin/sh

git -C /couchpotato pull

python2.7 /couchpotato/CouchPotato.py --console_log --data_dir=/config/couchpotato --config_file=/config/couchpotato/couchpotato.ini