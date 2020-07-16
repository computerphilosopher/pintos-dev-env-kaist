PINTOS_CONTAINER=pintos # Make this value to yours.

docker exec -it $PINTOS_CONTAINER /bin/bash -c \
    "cd /pintos/src/threads/build && pintos-gdb kernel.o -ex 'target remote localhost:1234'"
