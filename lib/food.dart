class Jewellery {
  final int plantId;
  final int price;
  final double rating;
  final String category;
  final String jewelleryName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Jewellery(
      {required this.plantId,
      required this.price,
      required this.category,
      required this.jewelleryName,
      required this.rating,
      required this.imageURL,
      required this.isFavorated,
      required this.decription,
      required this.isSelected});

  static List<Jewellery> plantList = [
    Jewellery(
        plantId: 0,
        price: 250,
        category: '',
        jewelleryName: 'Burger',
        rating: 4.5,
        imageURL: 'assets/food7.jpeg',
        isFavorated: false,
        decription:
            'We eat with our eyes first, but before we see our food, we picture it while reading the menu descriptions. They say one image is worth a thousand words.',
        isSelected: false),
    Jewellery(
        plantId: 1,
        price: 150,
        category: '',
        jewelleryName: 'Pizza',
        rating: 4.8,
        imageURL: 'assets/596343.jpg',
        isFavorated: false,
        decription:
            'We eat with our eyes first, but before we see our food, we picture it while reading the menu descriptions. They say one image is worth a thousand words',
        isSelected: false),
    Jewellery(
        plantId: 2,
        price: 100,
        category: '',
        jewelleryName: 'Cocacoal',
        rating: 4.7,
        imageURL: 'assets/chocolates-491165_960_720.jpg',
        isFavorated: false,
        decription:
            'We eat with our eyes first, but before we see our food, we picture it while reading the menu descriptions. They say one image is worth a thousand words.',
        isSelected: false),
    Jewellery(
        plantId: 3,
        price: 250,
        category: '',
        jewelleryName: 'Momos',
        rating: 4.5,
        imageURL: 'assets/papavegchinesefood.jpg',
        isFavorated: false,
        decription:
            'We eat with our eyes first, but before we see our food, we picture it while reading the menu descriptions. They say one image is worth a thousand words.',
        isSelected: false),
    Jewellery(
        plantId: 4,
        price: 55,
        category: '',
        jewelleryName: 'French Fry',
        rating: 4.1,
        imageURL: 'assets/frenchfries.jpg',
        isFavorated: false,
        decription:
            'We eat with our eyes first, but before we see our food, we picture it while reading the menu descriptions. They say one image is worth a thousand words.',
        isSelected: false),
    Jewellery(
        plantId: 5,
        price: 30,
        category: '',
        jewelleryName: 'Samosa',
        rating: 4.4,
        imageURL: 'assets/samosa.jpg',
        isFavorated: false,
        decription:
            "We eat with our eyes first, but before we see our food, we picture it while reading the menu descriptions. They say one image is worth a thousand words.",
        isSelected: false),
    Jewellery(
        plantId: 6,
        price: 200,
        category: '',
        jewelleryName: 'Chicken 65',
        rating: 4.2,
        imageURL: 'assets/chicken 65 17.JPG',
        isFavorated: false,
        decription:
            'We eat with our eyes first, but before we see our food, we picture it while reading the menu descriptions. They say one image is worth a thousand words.',
        isSelected: false),
    Jewellery(
        plantId: 7,
        price: 250,
        category: '',
        jewelleryName: 'Panner Tikka',
        rating: 4.5,
        imageURL: 'assets/1.JPG',
        isFavorated: false,
        decription:
            'We eat with our eyes first, but before we see our food, we picture it while reading the menu descriptions. They say one image is worth a thousand words.',
        isSelected: false),
    Jewellery(
        plantId: 8,
        price: 145,
        category: '',
        jewelleryName: 'Rose Milk',
        rating: 4.7,
        imageURL: 'assets/rosemilk.jpg',
        isFavorated: false,
        decription:
            'We eat with our eyes first, but before we see our food, we picture it while reading the menu descriptions. They say one image is worth a thousand words.',
        isSelected: false),
    Jewellery(
        plantId: 8,
        price: 145,
        category: '',
        jewelleryName: 'Black Forest',
        rating: 4.7,
        imageURL: 'assets/blackforest.jpg',
        isFavorated: false,
        decription:
            'We eat with our eyes first, but before we see our food, we picture it while reading the menu descriptions. They say one image is worth a thousand words.',
        isSelected: false),
    Jewellery(
        plantId: 8,
        price: 145,
        category: '',
        jewelleryName: 'Popcon',
        rating: 4.7,
        imageURL: 'assets/combo 3.jpg',
        isFavorated: false,
        decription:
            'We eat with our eyes first, but before we see our food, we picture it while reading the menu descriptions. They say one image is worth a thousand words.',
        isSelected: false),
  ];

  static List<Jewellery> getFavoritedPlants() {
    List<Jewellery> _travelList = Jewellery.plantList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  static List<Jewellery> addedToCartPlants() {
    List<Jewellery> _selectedPlants = Jewellery.plantList;
    return _selectedPlants
        .where((element) => element.isSelected == true)
        .toList();
  }
}
