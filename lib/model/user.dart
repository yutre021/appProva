class User{
  final int id;
  final String email;
  final String password;
  final String name;
  final String phone;



  User(this.id,this.name,this.password,this.email,this.phone);

  User.fromJson(Map<String, dynamic> json)
      : id =json['id'],
        name = json['name'],
        email = json['email'],
        phone = json['phone'],
        password = json['password'];

   Map<String, dynamic> toJson() => {
    'id':id,
    'name': name,
    'email': email,
     'phone':phone,
     'password':password,
  };

  @override
  String toString() => 'User{id: $id, name: $name}';
}