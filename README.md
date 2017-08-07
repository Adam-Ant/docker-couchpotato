[hub]: https://hub.docker.com/r/adamant/couchpotato

# [adamant/couchpotato][hub]

[![](https://images.microbadger.com/badges/image/adamant/couchpotato.svg)](https://microbadger.com/images/adamant/couchpotato) [![Docker Pulls](https://img.shields.io/docker/pulls/adamant/couchpotato.svg)][hub] [![Docker Stars](https://img.shields.io/docker/stars/adamant/couchpotato.svg)][hub] [![Build Status](https://drone.adam-ant.co.uk/api/badges/Adam-Ant/docker-couchpotato/status.svg)](https://drone.adam-ant.co.uk/Adam-Ant/docker-couchpotato)

An Alpine Linux based Docker container to run CouchPotato. It expects a /config volume to store data, and a /media volume where your media is stored. Enjoy!

## Example run command
`docker run -d --restart=always --name=couchpotato -v $(pwd)/config:/config -v $(pwd)/media:/media -p 5050:5050 adamant/couchpotato`
