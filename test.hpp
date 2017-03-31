#include <string>
#include <stdint.h>
class test_t {
  public:
  const char* const buffer;
  const size_t buffer_size;
  test_t(const char* const p_buffer, const size_t p_buffer_size);
  void later();
};
