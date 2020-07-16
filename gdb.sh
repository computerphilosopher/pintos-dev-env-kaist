PINTOS_CONTAINER=pintos # Make this value to yours.
echo "pintos-gdb kernel.o $@"

docker exec -it $PINTOS_CONTAINER /bin/bash -c \
  "cd /pintos/src/threads/build && pintos-gdb kernel.o $@"
