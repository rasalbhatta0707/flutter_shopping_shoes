import 'package:flutter/material.dart';
import 'package:flutter_shopping_shoes/components/models/cart.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        SizedBox(height: 25,),
        Text(
          'Your Cart',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 25,),

        //list of shoes in cart
      Expanded(
  child: ListView.builder(
    itemCount: value.getUserCart().length,
    itemBuilder: (context, index) {
      var shoe = value.getUserCart()[index];
      return ListTile(
        leading: Image.asset(shoe.imagePath),
        title: Text(shoe.name),
        subtitle: Text('\$${shoe.price}'),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            value.removeFromCart(shoe);
          },
        ),
      );
    },
  ),
),
  
      ],
    ));
  }
}
