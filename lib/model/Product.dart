class Product {
  final String imgaeURl;
  final String name;
  final double price;
  final double disPrice;
  final String discount;
  final String? type;
  final String? typecolor;
  final String Describtion;

  Product(
      {required this.imgaeURl,
      required this.name,
      required this.price,
      required this.disPrice,
      required this.Describtion,
      this.type,
      this.typecolor,
      required this.discount});
}

List<Product> product1 = [
  Product(
      name: "Nike InfinityRN4 Midnight",
      imgaeURl: 'lib/assets/pic/category/Product/Nike_infinityRN4_Midnight.png',
      price: 175.00,
      disPrice: 133,
      typecolor: 'Shoes',
      Describtion:
          "Nike InfinityRN 4 is a brand-new take on a familiar favourite.\tIt's made from our all-new Nike ReactX foam, which gives you 13% more energy return compared with Nike React foam, to help you stay fresh and bouncy. (What's more? Nike ReactX reduces the carbon footprint of the midsole by at least 43% compared with Nike React foam, so it helps support the planet, too).",
      discount: '24%'),
  Product(
      name: "Chainsbody Bags Luxury White Mesger Bag",
      imgaeURl: 'lib/assets/pic/category/Product/Woman Bag 3.png',
      price: 35.00,
      type: 'bag',
      disPrice: 17.25,
      Describtion: 's',
      discount: '50%'),
  Product(
      name: "Nike Infinity Run Shoes",
      imgaeURl: 'lib/assets/pic/category/Product/Nike runner_whitebrown.png',
      price: 190.00,
      disPrice: 90.00,
      typecolor: 'Shoes',
      Describtion: 's',
      discount: '50%'),
];
List<Product> product2 = [
  Product(
      name: "Animal Print 3-IN-1 CROSSBODY BAG",
      imgaeURl: 'lib/assets/pic/category/Product/Woman Bag 1.png',
      price: 40.00,
      disPrice: 20,
      Describtion: 's',
      type: 'bag',
      discount: '50%'),
  Product(
      name: "Nike Air Max 270 React Big Kids' Shoe",
      imgaeURl: 'lib/assets/pic/category/Product/Shoes 3.png',
      price: 135.00,
      disPrice: 67.5,
      Describtion: 's',
      typecolor: 'Shoes',
      discount: '50%'),
  Product(
      name: "NYLON TOTE BAG WITH SPORTY DRAWSTRING CLOSURE",
      imgaeURl: 'lib/assets/pic/category/Product/Woman Bag 4.png',
      price: 39.95,
      Describtion: 's',
      disPrice: 19.975,
      type: 'bag',
      discount: '50%'),
];
List<Product> product3 = [
  Product(
      name: "Animal Print 3-IN-1 CROSSBODY BAG",
      imgaeURl: 'lib/assets/pic/category/Product/Woman Bag 1.png',
      price: 40.00,
      disPrice: 20,
      Describtion: 's',
      type: 'bag',
      discount: '50%'),
  Product(
      name: "Nike Air Max 270 React Big Kids' Shoe",
      imgaeURl: 'lib/assets/pic/category/Product/Shoes 3.png',
      price: 135.00,
      Describtion: 's',
      disPrice: 67.5,
      typecolor: 'Shoes',
      discount: '50%'),
  Product(
      name: "Charmi Card Holder",
      imgaeURl: 'lib/assets/pic/category/Product/Woman Bag 2.png',
      price: 39.95,
      Describtion: 's',
      disPrice: 19.975,
      type: 'bag',
      discount: '50%'),
  Product(
      name: "Nike Air Zoom Pegasus",
      imgaeURl: 'lib/assets/pic/category/Product/Shoes 2.png',
      price: 39.95,
      Describtion: 's',
      disPrice: 19.975,
      typecolor: 'Shoes',
      discount: '50%'),
];
List<Product> product4 = [
  Product(
      name: "Nike Air Zoom Pegasus",
      imgaeURl: 'lib/assets/pic/category/Product/Shoes 2.png',
      price: 39.95,
      disPrice: 19.975,
      Describtion: 's',
      typecolor: 'Shoes',
      discount: '50%'),
  Product(
      name: "Animal Print 3-IN-1 CROSSBODY BAG",
      imgaeURl: 'lib/assets/pic/category/Product/Woman Bag 1.png',
      price: 40.00,
      type: 'bag',
      Describtion: 's',
      disPrice: 20,
      discount: '50%'),
  Product(
      name: "Charmi Card Holder",
      type: 'bag',
      imgaeURl: 'lib/assets/pic/category/Product/Woman Bag 2.png',
      price: 39.95,
      disPrice: 19.975,
      Describtion: 's',
      discount: '50%'),
  Product(
      name: "Nike Infinity Run Shoes",
      imgaeURl: 'lib/assets/pic/category/Product/Nike runner_whitebrown.png',
      price: 190.00,
      disPrice: 90.00,
      Describtion: 's',
      typecolor: 'Shoes',
      discount: '50%'),
];
List<Product> Product_all = [
  Product(
      name: "Nike Men's Shoes Nike Air Max 270 React",
      imgaeURl: 'lib/assets/pic/category/Product/Shoes 1.png',
      price: 175.00,
      disPrice: 133,
      Describtion: 's',
      typecolor: 'Shoes',
      discount: '24%'),
  Product(
      name: "Chainsbody Bags Luxury White Mesger Bag",
      imgaeURl: 'lib/assets/pic/category/Product/Woman Bag 3.png',
      price: 35.00,
      Describtion: 's',
      disPrice: 17.25,
      type: 'bag',
      discount: '50%'),
  Product(
      name: "Nike Men's React Infinity Run Flyknit",
      imgaeURl: 'lib/assets/pic/category/Product/Shoes 4.png',
      price: 175.00,
      disPrice: 87.5,
      Describtion: 's',
      typecolor: 'Shoes',
      discount: '50%'),
  Product(
      name: "Animal Print 3-IN-1 CROSSBODY BAG",
      Describtion: 's',
      imgaeURl: 'lib/assets/pic/category/Product/Woman Bag 1.png',
      price: 40.00,
      disPrice: 20,
      type: 'bag',
      discount: '50%'),
  Product(
      name: "Nike Air Max 270 React Big Kids' Shoe",
      imgaeURl: 'lib/assets/pic/category/Product/Shoes 3.png',
      price: 135.00,
      disPrice: 67.5,
      typecolor: 'Shoes',
      Describtion: 's',
      discount: '50%'),
  Product(
      name: "NYLON TOTE BAG WITH SPORTY DRAWSTRING CLOSURE",
      imgaeURl: 'lib/assets/pic/category/Product/Woman Bag 4.png',
      price: 39.95,
      Describtion: 's',
      disPrice: 19.975,
      type: 'bag',
      discount: '50%'),
  Product(
      name: "Animal Print 3-IN-1 CROSSBODY BAG",
      imgaeURl: 'lib/assets/pic/category/Product/Woman Bag 1.png',
      price: 40.00,
      disPrice: 20,
      Describtion: 's',
      typecolor: 'Shoes',
      discount: '50%'),
  Product(
      name: "Nike Air Max 270 React Big Kids' Shoe",
      imgaeURl: 'lib/assets/pic/category/Product/Shoes 3.png',
      price: 135.00,
      disPrice: 67.5,
      Describtion: 's',
      typecolor: 'Shoes',
      discount: '50%'),
  Product(
      name: "Charmi Card Holder",
      imgaeURl: 'lib/assets/pic/category/Product/Woman Bag 2.png',
      price: 39.95,
      Describtion: 's',
      disPrice: 19.975,
      type: 'bag',
      discount: '50%'),
  Product(
      name: "Nike Air Zoom Pegasus",
      imgaeURl: 'lib/assets/pic/category/Product/Shoes 2.png',
      price: 39.95,
      disPrice: 19.975,
      typecolor: 'Shoes',
      Describtion: 's',
      discount: '50%'),
  Product(
      name: "Nike Air Zoom Pegasus",
      imgaeURl: 'lib/assets/pic/category/Product/Shoes 2.png',
      price: 39.95,
      Describtion: 's',
      disPrice: 19.975,
      typecolor: 'Shoes',
      discount: '50%'),
  Product(
      name: "Animal Print 3-IN-1 CROSSBODY BAG",
      imgaeURl: 'lib/assets/pic/category/Product/Woman Bag 1.png',
      price: 40.00,
      Describtion: 's',
      disPrice: 20,
      type: 'bag',
      discount: '50%'),
  Product(
      name: "Charmi Card Holder",
      imgaeURl: 'lib/assets/pic/category/Product/Woman Bag 2.png',
      price: 39.95,
      Describtion: 's',
      disPrice: 19.975,
      type: 'bag',
      discount: '50%'),
  Product(
      name: "Nike Men's React Infinity Run Flyknit",
      imgaeURl: 'lib/assets/pic/category/Product/Shoes 4.png',
      price: 175.00,
      disPrice: 87.5,
      typecolor: 'Shoes',
      Describtion: 's',
      discount: '50%'),
];
