%module test_jni
%include "various.i"
%include "stdint.i"
%rename (Test) test_t;
// http://stackoverflow.com/questions/33504659/passing-byte-from-java-to-c
%apply char *BYTE { char *p_buffer };

%{
#include "test.hpp"
%}

%include "test.hpp"

