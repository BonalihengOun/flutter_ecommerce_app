import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/Product.dart';
import 'package:flutter_sneaker_shop_ecommerce/state_management/cart_provider.dart';
import 'package:provider/provider.dart';

class Cart_screen extends StatefulWidget {
  @override
  State<Cart_screen> createState() => _Cart_screenState();
}

class _Cart_screenState extends State<Cart_screen> {
  final CartProvider _cartProvider = CartProvider();
  double shipping = 20.00;
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CartProvider>(
        builder: (context, value, child) {
          bool hasItems = value.products.isNotEmpty;
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Text(
                    'Your Cart',
                    style: TextStyle(
                      fontFamily: 'NiraBold',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Dark.withOpacity(0.1)),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView.builder(
                    itemCount: value.products.length,
                    itemBuilder: (context, index) {
                      final product = value.products[index];
                      return Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            border: Border.all(width: 0.6, color: Dark),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.15,
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(product.imageUrl![0]
                                          .url), // Access the URL property
                                      fit: BoxFit.contain),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      product.name,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Dark,
                                        fontFamily: 'NiraBold',
                                      ),
                                    ),
                                    Text(
                                      '\$' + product.price.toString(),
                                      style: TextStyle(
                                          fontFamily: 'NiraBold',
                                          fontSize: 16,
                                          color: Dark),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          splashRadius: 20,
                                          onPressed: () {},
                                          icon: isFavorite
                                              ? Image.asset(
                                                  'lib/assets/pic/Icon App/Vector1.png',
                                                  width: 28,
                                                  height: 28,
                                                )
                                              : Image.asset(
                                                  'lib/assets/pic/Icon App/Vector.png',
                                                  width: 28,
                                                  height: 28,
                                                ),
                                        ),
                                        IconButton(
                                          splashRadius: 20,
                                          onPressed: () {
                                            value.removeFromCart(product);
                                          },
                                          icon: Image.asset(
                                            'lib/assets/pic/Icon App/Delete.png',
                                            width: 28,
                                            height: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 16,
                                      ),
                                      child: Consumer<CartProvider>(
                                        builder:
                                            (context, CartProvider, child) {
                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(8),
                                                        bottomLeft:
                                                            Radius.circular(8),
                                                      ),
                                                      border: Border.all(
                                                          width: 1,
                                                          color: Grey)),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.1,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.045,
                                                  child: IconButton(
                                                    splashRadius: 20,
                                                    color:
                                                        Dark.withOpacity(0.8),
                                                    icon: Icon(Icons.remove),
                                                    onPressed: () {
                                                      _cartProvider
                                                          .changeQuantity(
                                                              product,
                                                              product.quantity);
                                                      _cartProvider
                                                          .notifyListeners(); // Add this line
                                                    },
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Grey.withOpacity(0.2),
                                                      border: Border.all(
                                                          width: 0.5,
                                                          color: Grey)),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.09,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.045,
                                                  child: Center(
                                                    child: Text(
                                                      '${product.quantity}',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'NiraBold'),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(8),
                                                        bottomRight:
                                                            Radius.circular(8),
                                                      ),
                                                      border: Border.all(
                                                          width: 1,
                                                          color: Grey)),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.1,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.045,
                                                  child: IconButton(
                                                    color:
                                                        Dark.withOpacity(0.8),
                                                    splashRadius: 20,
                                                    icon: Icon(Icons.add),
                                                    onPressed: () {
                                                      _cartProvider
                                                          .changeQuantity(
                                                              product,
                                                              product.quantity +
                                                                  1);
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: MediaQuery.of(context).size.height * 0.15,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Dark,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Items (${value.getTotalItems()})', // Update this line
                                style: TextStyle(
                                    fontFamily: 'NiraBold',
                                    fontSize: 14,
                                    color: Light),
                              ),
                              Text(
                                ' \$' + value.calculateTotalitem(),
                                style: TextStyle(
                                    fontFamily: 'NiraBold',
                                    fontSize: 14,
                                    color: Light),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Shipping',
                                style: TextStyle(
                                    fontFamily: 'NiraBold',
                                    fontSize: 14,
                                    color: Light),
                              ),
                              Text(
                                hasItems
                                    ? '\$' + shipping.toString()
                                    : '\$0.00',
                                style: TextStyle(
                                    fontFamily: 'NiraBold',
                                    fontSize: 14,
                                    color: Light),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Light,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total:',
                                style: TextStyle(
                                    fontFamily: 'NiraBold',
                                    fontSize: 18,
                                    color: Light),
                              ),
                              Text(
                                hasItems
                                    ? '\$' + value.calculateTotal()
                                    : '\$0.00',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'NiraBold',
                                    color: Light),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
