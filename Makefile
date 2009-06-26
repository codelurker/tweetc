CC = gcc
CFLAGS = -O2 -Wall -Wextra -std=c99 -pedantic
LDFLAGS = -lcurl -lssl -lcrypto -lrt -lssl -lcrypto -ldl -lz -lz
OBJECTS = main.o twitter-actions.o access-url.o url-encode.o authorization-password.o

ctweet : $(OBJECTS)
	$(CC) -o ctweet $(LDFLAGS) $(OBJECTS)

*.o *.c:
	$(CC) $(CFLAGS) -c $< -o $@ 

clean:
	rm -f *.o ctweet
