kidPy dockerized - Adrian Sinclair

To run container:

sudo docker run -p 192.168.40.77:8080:5000/tcp -p 192.168.41.20:60000:6000/udp --device=/dev/ttyUSB4 -v ~/container-data:/data -it --name test35 88dd34a1c820
