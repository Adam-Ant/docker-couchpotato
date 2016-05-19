#CouchPotato
A dockerfile to run COuchPotato. It expects a /config partition to store data, and a /media volume where your media is stored. Enjoy!

##Example run command
docker run -d --restart=always --name CouchPotato --volumes-from Data --volumes-from media -p 5050:5050 couchpotato