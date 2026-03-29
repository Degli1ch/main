class Person
{
  String _name = "";
  int _age = 18; // Блять, нахуя приват так ставиться в чем проблема просто въебать по умолчанию

  Person (String name, int age) {
    this._name = name;
    this._age = age;
  }
  void display() => print("Name: $_name \tAge: $_age");
}