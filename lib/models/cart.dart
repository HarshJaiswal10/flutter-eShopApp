import 'package:flutter_1/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel.internal();

  CartModel.internal();

  factory CartModel() => cartModel;

  // catalog field
  CatalogModel _catalog;

  //Collection of Ids - store Ids of each item
  final List<int> _itemIds = [];

  // get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  // remove item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
