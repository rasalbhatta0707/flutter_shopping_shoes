import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{

  //list of shoes for cart
  List<Shoe> shoeShop = [
    Shoe(
       name: 'Sumit Air',
       price: '240',
       imagePath: 'lib/Images/shoe.png',
       description: 'Premium materials built for long-lasting durability and daily wear.',
        ),
    Shoe(
      name: 'Gauranga Retro',
      price: '236',
      imagePath: 'lib/Images/shoe1.png',
      description: 'Soft cushioned support for superior comfort and all-day stability',
    ),
    Shoe(
      name: 'Umesh Runner',
      price: '199',
      imagePath: 'lib/Images/shoe2.png',
      description: 'High-traction sole engineered for strong grip and confident movement.',
    ),
   
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }
  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  } 
}
