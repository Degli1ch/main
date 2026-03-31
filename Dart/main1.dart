import 'Person1.dart';

void main() {
  Person tom = Person("Tom", 38);
  // если прям уж хочется поиграться с приватом , как видишь доступ на
  // получение к name и age нет, так как они приватны и мы не ебанули им геттер
  // (раскоментируй и увидишь ошибку)

  // print(tom.name);
  // print(tom.age);

  //а вот прочитать вполне
  print(tom.username);
  tom.age = 25; // а вот тут уже сработает сеттер с валидацией
  print(tom.username);
  tom.age =
      150; // а вот тут уже сработает сеттер с валидацией и выбросит ошибку если раскоментиить ArgumentError
  print(tom.username);
}
