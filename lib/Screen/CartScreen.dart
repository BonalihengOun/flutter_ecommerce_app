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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CartProvider>(
        builder: (context, value, child) {
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
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    itemCount: value.products.length,
                    itemBuilder: (context, index) {
                      final product = value.products[index];
                      return Card(
                        child: ListTile(
                          leading: Image.asset(product.imageUrl![0].url),
                          title: Text(
                            product.name,
                            style:
                                TextStyle(fontFamily: 'NiraBold', fontSize: 12),
                          ),
                          subtitle: Text(
                            '${product.quantity} x ${product.price}',
                            style: TextStyle(fontFamily: 'NiraBold'),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () {
                                  _cartProvider.changeQuantity(
                                      product, product.quantity - 1);
                                },
                              ),
                              Text('${product.quantity}'),
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  _cartProvider.changeQuantity(
                                      product, product.quantity + 1);
                                },
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
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.15,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    'Total: \$' + value.totalPrice.toString(),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
