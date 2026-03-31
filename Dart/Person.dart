// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Person {
  String _name = "";
  int _age =
      18; // Блять, нахуя приват так ставиться в чем проблема просто въебать по умолчанию

  Person(String name, int age) {
    this._name = name;
    this._age = age;
  }
  void display() => print("Name: $_name \tAge: $_age");
}

// классический дата класс
class Person2 {
  String name;
  int age;
  Person2({required this.name, required this.age});

  Person2 copyWith({String? name, int? age}) {
    return Person2(name: name ?? this.name, age: age ?? this.age);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'age': age};
  }

  factory Person2.fromMap(Map<String, dynamic> map) {
    return Person2(name: map['name'] as String, age: map['age'] as int);
  }

  String toJson() => json.encode(toMap());

  factory Person2.fromJson(String source) =>
      Person2.fromMap(json.decode(source) as Map<String, dynamic>);
  // именно эта твоя функция дисплея , которую ты хотел сделать чтобы допустим отлаживать удобнее было или логировать
  @override
  String toString() => 'Person2(name: $name, age: $age)';

  @override
  bool operator ==(covariant Person2 other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
