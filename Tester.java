public final class Tester {

  static {
    System.load(new java.io.File("libtest.so").getAbsolutePath());
  }

  static byte[] buffer = "This byte array that should remain visible in the C++ class".getBytes();

  private static void testBuffer() {
    Test test = new Test(buffer, buffer.length);
    test.later();
  }

  public static void main(String[] args) {
    testBuffer();
  }
}

