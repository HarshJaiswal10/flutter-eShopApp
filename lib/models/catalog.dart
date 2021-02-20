class CatalogModel{
  static final Items = [
  Item(
    id: 1,
    name: "iPhone 12 Pro",
    desc: "Apple iPhone 12th generation",
    price: 999,
    color: "#33505a",
    image: "https://images-na.ssl-images-amazon.com/images/I/71DVgBTdyLL._SL1500_.jpg",
  )
];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}