class Person {
  String _name;
  int _age = 0;

  // String get name {return _name;}
  // int get age {return _age;} // А че, с get_name не катит???
  // set age(int value){ // А ебать тут это служебки, пиздец
  //   if(value > 0 && value < 111){
  //     _age = value;
  //   }
  // }

  Person(String name, int age) : _name = name {
    this.age = age; // вызывается сеттер с валидацией
  }

  String get username =>
      _name +
      " " +
      _age.toString(); // просто для примера, чтобы показать что можно делать разные геттеры
  set name(String value) => _name = value;

  set age(int value) {
    if (value < 0 || value > 100) {
      // throw ArgumentError('Возраст должен быть от 0 до 100');
      print('Возраст должен быть от 0 до 100');
      _age = 0; // или можно установить в дефолтное значение, например 0
      return;
    }
    _age = value;
  }
}
