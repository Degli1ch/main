import 'Person1.dart';

void main() {

  Person tom = Person("Tom", 38);
  print(tom.name);
  print(tom.age);

  tom.age = 75;
  print(tom.age);
}