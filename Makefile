JNI_HEADERS1=/usr/lib/jvm/java-1.7.0-openjdk/include/linux
JNI_HEADERS2=/usr/lib/jvm/java-1.7.0-openjdk/include

all:
	swig -c++ -java -o test_wrap.cpp test.i
	gcc -fPIC test_wrap.cpp -I$(JNI_HEADERS1) -I$(JNI_HEADERS2) -o test_wrap.o
	gcc -fPIC test.cpp -o test.o
	ld -G test_wrap.o test.o -o libtest.so
