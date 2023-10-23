import 'package:uuid/uuid.dart';

class ProductModel {
  final String? productId,
      productTitle,
      productPrice,
      productCategory,
      productDescription,
      productImage,
      productQuantity;

  ProductModel({
    this.productId,
    this.productTitle,
    this.productPrice,
    this.productCategory,
    this.productDescription,
    this.productImage,
    this.productQuantity
  });

  static List<ProductModel> localProducts = [

    ProductModel(
      productId: '1' ,
      productTitle: 'Apple Iphone 14 Pro (128GB) - Black ' ,
      productPrice: '1399.99\$' ,
      productCategory: 'Phones' ,
      productDescription: 'The iPhone 14 is a new smartphone from Apple '
          'that comes in two sizes: 6.1 inches and 6.7 inches1.'
          ' It has a glass and aluminum or stainless steel design'
          ' with Ceramic Shield and IP68 rating23. It has a dual-camera '
          'system with a new Main camera, an Ultra Wide camera, and a front'
          ' TrueDepth camera1. It also has a new safety feature called Crash Detection'
          ' that can call emergency services via satellite1. The iPhone 14 Pro '
          'and Pro Max have additional features like a telephoto camera and a high-refresh-rate screen' ,
      productQuantity: '10' ,
      productImage: 'http12312',

    ),
    ProductModel(
      productId: '2' ,
      productTitle: 'Apple Iphone 13 Pro (128GB) - Black ' ,
      productPrice: '1299.99\$' ,
      productCategory: 'Phones' ,
      productDescription: 'The iPhone 13 is a new smartphone from Apple '
          'that comes in two sizes: 6.1 inches and 6.7 inches1.'
          ' It has a glass and aluminum or stainless steel design'
          ' with Ceramic Shield and IP68 rating23. It has a dual-camera '
          'system with a new Main camera, an Ultra Wide camera, and a front'
          ' TrueDepth camera1. It also has a new safety feature called Crash Detection'
          ' that can call emergency services via satellite1. The iPhone 14 Pro '
          'and Pro Max have additional features like a telephoto camera and a high-refresh-rate screen' ,
      productQuantity: '5' ,
      productImage: 'http12312',

    ),
    ProductModel(
      productId: '3' ,
      productTitle: 'Apple Iphone 12 Pro (128GB) - Black ' ,
      productPrice: '1199.99\$' ,
      productCategory: 'Phones' ,
      productDescription: 'The iPhone 12 is a new smartphone from Apple '
          'that comes in two sizes: 6.1 inches and 6.7 inches1.'
          ' It has a glass and aluminum or stainless steel design'
          ' with Ceramic Shield and IP68 rating23. It has a dual-camera '
          'system with a new Main camera, an Ultra Wide camera, and a front'
          ' TrueDepth camera1. It also has a new safety feature called Crash Detection'
          ' that can call emergency services via satellite1. The iPhone 14 Pro '
          'and Pro Max have additional features like a telephoto camera and a high-refresh-rate screen' ,
      productQuantity: '10' ,
      productImage: 'http12312',

    ),
    ProductModel(
      productId: const Uuid().v4() ,
      productTitle: 'Apple Iphone 11 Pro (128GB) - Black ' ,
      productPrice: '1099.99\$' ,
      productCategory: 'Phones' ,
      productDescription: 'The iPhone 11 is a new smartphone from Apple '
          'that comes in two sizes: 6.1 inches and 6.7 inches1.'
          ' It has a glass and aluminum or stainless steel design'
          ' with Ceramic Shield and IP68 rating23. It has a dual-camera '
          'system with a new Main camera, an Ultra Wide camera, and a front'
          ' TrueDepth camera1. It also has a new safety feature called Crash Detection'
          ' that can call emergency services via satellite1. The iPhone 14 Pro '
          'and Pro Max have additional features like a telephoto camera and a high-refresh-rate screen' ,
      productQuantity: '3' ,
      productImage: 'http12312',

    ),
    ProductModel(
      productId: '5' ,
      productTitle: 'Apple Iphone 10 Pro (128GB) - Black ' ,
      productPrice: '999.99\$' ,
      productCategory: 'Phones' ,
      productDescription: 'The iPhone 10 is a new smartphone from Apple '
          'that comes in two sizes: 6.1 inches and 6.7 inches1.'
          ' It has a glass and aluminum or stainless steel design'
          ' with Ceramic Shield and IP68 rating23. It has a dual-camera '
          'system with a new Main camera, an Ultra Wide camera, and a front'
          ' TrueDepth camera1. It also has a new safety feature called Crash Detection'
          ' that can call emergency services via satellite1. The iPhone 14 Pro '
          'and Pro Max have additional features like a telephoto camera and a high-refresh-rate screen' ,
      productQuantity: '1' ,
      productImage: 'http12312',

    ),
    ProductModel(
      productId: '6' ,
      productTitle: 'Apple Iphone 9 Pro (128GB) - Black ' ,
      productPrice: '899.99\$' ,
      productCategory: 'Phones' ,
      productDescription: 'The iPhone 9 is a new smartphone from Apple '
          'that comes in two sizes: 6.1 inches and 6.7 inches1.'
          ' It has a glass and aluminum or stainless steel design'
          ' with Ceramic Shield and IP68 rating23. It has a dual-camera '
          'system with a new Main camera, an Ultra Wide camera, and a front'
          ' TrueDepth camera1. It also has a new safety feature called Crash Detection'
          ' that can call emergency services via satellite1. The iPhone 14 Pro '
          'and Pro Max have additional features like a telephoto camera and a high-refresh-rate screen' ,
      productQuantity: '7' ,
      productImage: 'http12312',

    ),

  ];


}
