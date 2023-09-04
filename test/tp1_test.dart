import 'package:tp1/tp1/tp1.dart';
import 'package:test/test.dart';
import 'package:tp1/tp1/Exo2.dart';
import 'package:tp1/tools/FileReader.dart';

main () {
  test("exo1",() {
    expect(() => exo1() , prints( "Hello, World!\n"));
  });

  test("exo2",() {
    expect(readFirstChar(FileReader("BellumCivile.txt")), "a");
    expect(readFirstChar(FileReader.fromString("Hello")), "H");
  });
}
