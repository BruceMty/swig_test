JNI_HEADERS1=/usr/lib/jvm/java-1.7.0-openjdk/include/linux
JNI_HEADERS2=/usr/lib/jvm/java-1.7.0-openjdk/include

all:
	swig -c++ -java -o test_wrap.cpp test.i
	g++ -c -fPIC -std=c++11 test_wrap.cpp -I$(JNI_HEADERS1) -I$(JNI_HEADERS2) -o test_wrap.o
	g++ -c -fPIC test.cpp -o test.o
	g++ -shared test.o test_wrap.o -o libtest.so

run:
	javac *.java
	java Tester

clean:
	rm -rf *.class Test.java test_* test.o test_wrap.o libtest.so

