webserver:
	g++ -c -I ./tinyxml -I ./libmicrohttpd/src/include -o webserver.o webserver.cpp
	g++ -o webserver  -g   webserver.o ./tinyxml/tinyxml.a ./libmicrohttpd/src/microhttpd/.libs/libmicrohttpd.a -pthread -ludev -lrt
clean:
	rm -f *.o webserver
