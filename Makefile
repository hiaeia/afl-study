CC=afl-gcc
INSTALL_PATH=..
NAME=crash

crash000:
	${CC} -m32 -o ${INSTALL_PATH}/${NAME} crash000.c
crash001: 
	${CC} -m32 -o ${INSTALL_PATH}/${NAME} crash001.c
crash002:
	${CC} -m32 -fno-stack-protector -e main -nostartfiles -o ${INSTALL_PATH}/${NAME} crash002.c
fuzz-stdin:
	afl-fuzz -i ../input -o ../output -- ${INSTALL_PATH}/${NAME}
fuzz-file:
	afl-fuzz -i ../input -o ../output ${INSTALL_PATH}/${NAME} @@
run:
	${INSTALL_PATH}/${NAME}
