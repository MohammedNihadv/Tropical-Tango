import '../models/dummy_bundle_model.dart';
import '../models/dummy_product_model.dart';

class Dummy {
  /// List Of Dummy Products
  static List<ProductModel> products = [
    ProductModel(
      name: 'Alpham',
      weight: '2 pc',
      cover: 'https://imgur.com/5K0o1r9.jpg',
      images: ['https://imgur.com/5K0o1r9.jpg'],
      price: 13,
      mainPrice: 15,
    ),
    ProductModel(
      name: 'Puttu & Kadala Curry',
      weight: '2 pc',
      cover: 'https://imgur.com/H4S73EI.jpg',
      images: ['https://imgur.com/H4S73EI.jpg'],
      price: 12,
      mainPrice: 15,
    ),
    ProductModel(
      name: 'Beef Biriyani',
      weight: 'Full',
      cover: 'https://imgur.com/RJO0PZ9.jpg',
      images: ['https://imgur.com/RJO0PZ9.jpg'],
      price: 15,
      mainPrice: 18,
    ),
    ProductModel(
      name: 'Broast', 
      weight: 'Full',
      cover: 'https://imgur.com/sgRUpkh.jpg',
      images: ['https://imgur.com/sgRUpkh.jpg'],
      price: 15,
      mainPrice: 18,
    ),
  ];

  /// List Of Dummy Bundles
  static List<BundleModel> bundles = [
    BundleModel(
      name: 'Masala Dosa',
      cover: 'https://imgur.com/6fUxW7v.jpg',
      itemNames: ['Kadala'],
      price: 395,
      mainPrice: 50.32,
    ),
    BundleModel(
      name: 'Pasta',
      cover: 'https://imgur.com/MVrdOKh.jpg',
      itemNames: ['Potato'],
      price: 35,
      mainPrice: 50.32,
    ),
    BundleModel(
      name: 'Fish Fry',
      cover: 'https://imgur.com/MucJf4G.jpg',
      itemNames: ['Potato'],
      price: 35,
      mainPrice: 50.32,
    ),
    BundleModel(
      name: 'Appam & Kadala Curry',
      cover: 'https://imgur.com/09MO7fv.jpg',
      itemNames: ['Kadala'],
      price: 35,
      mainPrice: 50.32,
    ),
  ];
}

