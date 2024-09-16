part of 'models.dart';

class User extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? address;
  final String? houseNumber;
  final String? phoneNumber;
  final String? city;
  final String? picturePath;

  User({
    this.id,
    this.name,
    this.email,
    this.address,
    this.houseNumber,
    this.phoneNumber,
    this.city,
    this.picturePath,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        email,
        address,
        houseNumber,
        phoneNumber,
        city,
        picturePath,
      ];
}

User mockUser = User(
  id: 1,
  name : 'Batman Joker',
  email: 'batman@gmail.com',
  address: 'Jl. Setiabudi no . 193',
  houseNumber: 'A2',
  phoneNumber: '08123456789',
  city: 'Bandung',
  picturePath: 'https://i.pinimg.com/474x/0b/34/d3/0b34d3c0095229e2b343d6133fe2aa89.jpg'
);