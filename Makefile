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

#	g++ -fPIC -std=c++11 test_wrap.cpp -I$(JNI_HEADERS1) -I$(JNI_HEADERS2) -o test_wrap.o
#	ld -G test_wrap.o test.o -o libtest.so -lstdc++

#	ld -G test_wrap.o test.o -o libtest.so -L/lib -L/usr/lib -lstdc++ -lm -lc -lgcc_s /usr/bin/../lib/gcc/x86_64-redhat-linux/4.8.3/crtendS.o /usr/bin/../lib/gcc/x86_64-redhat-linux/4.8.3/../../../../lib64/crtn.o
#	ld -G test_wrap.o test.o -o libtest.so -L/usr/bin/../lib/gcc/x86_64-redhat-linux/4.8.3 -L/usr/bin/../lib/gcc/x86_64-redhat-linux/4.8.3/../../../../lib64 -L/lib/../lib64 -L/usr/lib/../lib64 -L/usr/bin/../lib/gcc/x86_64-redhat-linux/4.8.3/../../.. -L/lib -L/usr/lib -lstdc++ -lm -lc -lgcc_s /usr/bin/../lib/gcc/x86_64-redhat-linux/4.8.3/crtendS.o /usr/bin/../lib/gcc/x86_64-redhat-linux/4.8.3/../../../../lib64/crtn.o
