class Person{

  String _name;
  int _age;

  String get name {return _name;}
  int get age {return _age;} // А че, с get_name не катит???
  set age(int value){ // А ебать тут это служебки, пиздец
    if(value > 0 && value < 111){
      _age = value;
    }
  }

  Person(this._name, this._age);
}