import 'package:eshop_flutter/models/catalog.dart';

class CartModel {
  late CatalogModel _catalog;

  final List<int?> _itemIds = [];
  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id!)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
}
