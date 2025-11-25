

import 'package:user_repository/src/entities/entities.dart';

class MyUser{
  String userId;
  String name;
  String email;
  bool hasActiveCart;

  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,

  });

  static final empty = MyUser(
    userId: '',
    email: '',
    name: '',
    hasActiveCart: false,
  );

  MyUserEntity toEntity(){
    return MyUserEntity(
      userId: userId,
      email: email,
      name: name,
      hasActiveCart: hasActiveCart
    );
  }

  static MyUser fromEntity(MyUserEntity entity){
    return MyUser(
        userId: entity.userId,
        name: entity.name,
        email: entity.email,
        hasActiveCart: entity.hasActiveCart
    );
  }

@override
  String toString() {
    return 'MyUser: $userId, $name, $email, $hasActiveCart';
  }


}