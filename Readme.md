#CouchPotato
An Alpine Linux based dockerfile to run CouchPotato. It expects a /config volume to store data, and a /media volume where your media is stored. Enjoy!

##Example run command
`docker run -d --restart=always --name CouchPotato --volumes-from Data --volumes-from media -p 5050:5050 adamant/couchpotato`
