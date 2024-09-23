part of 'models.dart';

enum FoodType { new_food, populer, recommended }

class Food extends Equatable {
  final int? id;
  final String? name;
  final String? picturePath;
  final String? description;
  final String? ingredienst;
  final double? price;
  final double? rate;
  final List<FoodType>? types;

  Food({
    this.id,
    this.name,
    this.picturePath,
    this.ingredienst,
    this.description,
    this.price,
    this.rate,
    this.types = const [],
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        picturePath,
        ingredienst,
        description,
        price,
        rate
      ];
}

List<Food> mockFoods = [
  Food(
    id: 1,
    picturePath:
        'https://i.pinimg.com/236x/5b/f2/7e/5bf27e721ed7bc858e0a7f0d905632e8.jpg',
    name: 'Sate Sayur Sultan',
    description:
        'Sate Sayur Sultan adalah menu sate vegan paling terkenal di Jakarta. Sate ini dibuat dari berbagai macam bahan berkualitas terbaik dan langsung dibuat oleh chef handal. Sate ini sangat sehat dan bergizi.',
    ingredienst:
        'Jamur Tiram, Tahu, Tempe, Paprika merah, kuning, dan hijau, Zucchini,Bawang Bombay, Tomat Ceri, Wortel, Terong Ungu, Kacang Panjang',
    price: 150000,
    rate: 4.2,
    types: [FoodType.populer, FoodType.recommended],
  ),
  Food(
    id: 2,
    picturePath:
        'https://i.pinimg.com/236x/e4/c8/ac/e4c8ac48c71738d0493b6e824f0094ed.jpg',
    name: 'Nasi Goreng Kambing',
    description:
        'Nasi Goreng Kambing spesial dengan bumbu rempah rahasia yang kaya akan cita rasa. Cocok untuk Anda yang menggemari makanan gurih dan pedas.',
    ingredienst:
        'Nasi putih, Daging kambing, Bawang merah, Bawang putih, Cabe merah besar, Cabe rawit, Tomat, Daun bawang, Kecap manis, Minyak goreng, Telur, Acar mentimun',
    price: 25000,
    rate: 4.5,
    types: [FoodType.new_food, FoodType.recommended],
  ),
  Food(
    id: 3,
    picturePath:
        'https://i.pinimg.com/236x/1a/b7/ee/1ab7ee51c29e366c9c47311773c09dde.jpg',
    name: 'Mie Ayam Jamur',
    description:
        'Mie Ayam Jamur dengan topping ayam yang empuk dan jamur yang segar, disajikan dengan kuah kaldu yang lezat.',
    ingredienst:
        'Mie telur, Daging ayam fillet, Jamur kancing, Sawi hijau, Bawang merah, Bawang putih, Kecap manis, Kecap asin, Saus tiram, Minyak wijen, Garam, Merica, Kaldu ayam, Minyak ayam',
    price: 20000,
    rate: 4.7,
    types: [FoodType.populer, FoodType.recommended],
  ),
  Food(
    id: 4,
    picturePath:
        'https://i.pinimg.com/236x/80/a9/1a/80a91a42cea42a2dcda727a48847642c.jpg',
    name: 'Bakso Beranak',
    description:
        'Bakso Beranak dengan ukuran jumbo berisi bakso kecil di dalamnya. Sangat cocok untuk pecinta makanan berkuah.',
    price: 30000,
    rate: 4.3,
    types: [FoodType.new_food ,FoodType.recommended],
  ),
  Food(
    id: 5,
    picturePath:
        'https://i.pinimg.com/236x/20/80/e0/2080e0aeb6d1d9c91b990892dcbbb455.jpg',
    name: 'Ayam Bakar Taliwang',
    description:
        'Ayam Bakar khas Lombok dengan bumbu pedas dan gurih, disajikan dengan plecing kangkung dan sambal terasi.',
    ingredienst:
        'Mie telur, Daging ayam fillet, Jamur kancing, Sawi hijau, Bawang merah, Bawang putih, Kecap manis, Kecap asin, Saus tiram, Minyak wijen, Garam, Merica, Kaldu ayam, Minyak ayam',
    price: 50000,
    rate: 4.8,
    types: [FoodType.populer, FoodType.recommended],
  ),
  Food(
    id: 6,
    picturePath:
        'https://i.pinimg.com/236x/6f/b7/f9/6fb7f9d36a80ee104e5a417ec2287b15.jpg',
    name: 'Gado-Gado Jakarta',
    description:
        'Gado-Gado dengan sayuran segar, tahu, tempe, dan lontong, disiram saus kacang kental yang gurih.',
    ingredienst:
        'Mie telur, Daging ayam fillet, Jamur kancing, Sawi hijau, Bawang merah, Bawang putih, Kecap manis, Kecap asin, Saus tiram, Minyak wijen, Garam, Merica, Kaldu ayam, Minyak ayam',
    price: 20000,
    rate: 4.6,
    types: [FoodType.new_food, FoodType.populer],
  ),
  Food(
    id: 7,
    picturePath:
        'https://i.pinimg.com/236x/6e/35/3d/6e353dfdcef71ce2f3dfe363390cb6b4.jpg',
    name: 'Es Cendol Durian',
    description:
        'Minuman es cendol dengan topping buah durian yang manis dan creamy, cocok untuk menghilangkan dahaga.',
    ingredienst:
        'Mie telur, Daging ayam fillet, Jamur kancing, Sawi hijau, Bawang merah, Bawang putih, Kecap manis, Kecap asin, Saus tiram, Minyak wijen, Garam, Merica, Kaldu ayam, Minyak ayam',
    price: 25000,
    rate: 4.4,
  ),
];
