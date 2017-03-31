#include <iostream>
#include "test.hpp"

test_t::test_t(const char* const p_buffer, const size_t p_buffer_size) :
                buffer(p_buffer), buffer_size(p_buffer_size) {

  std::cout << "buffer size at instantiation: " << buffer_size
            << ", at address " << (void*)buffer << "\n";
  for (int i=0; i<buffer_size; ++i) {
    std::cout << buffer[i];
//    std::cout << buffer[i] << "(" << (int)buffer[i] << ")";
  }
  std::cout << "\n";
}

void test_t::later() {
  std::cout << "buffer size later: " << buffer_size
            << ", at address " << (void*)buffer << "\n";
  for (int i=0; i<buffer_size; ++i) {
    std::cout << buffer[i];
//    std::cout << buffer[i] << "(" << (int)buffer[i] << ")";
  }
  std::cout << "\n";
}

