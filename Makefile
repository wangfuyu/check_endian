
APP_NAME=check_endian
OBJ_NAME=check_endian.o

$(APP_NAME):$(OBJ_NAME)
	gcc $^ -o $(APP_NAME)

%.o:%.c
	gcc -c -g -fno-stack-protector $^ -o $@

clean:
	rm *.o $(APP_NAME)
