import 'package:flutter/material.dart';
import 'package:flutter_shopping_shoes/components/models/cart.dart';
import 'package:flutter_shopping_shoes/components/models/shoe.dart';
import 'package:flutter_shopping_shoes/components/shoe_tile.dart';
import 'package:provider/provider.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //function to add shoe to cart
  void addShoeToCart(Shoe shoe) {
    //access the cart provider
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    //alert the user, shoe successfully added
    showDialog( context: context, builder: (context) => AlertDialog(
      title: Text('Success'),
      content: Text('Shoe added to cart'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('OK'),
        ),
      ],
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) =>
    Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal:25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search Here',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),    
              Icon(Icons.search, 
              color: Colors.grey,),
            ],
          ),

        ),
        Padding(
          padding: const EdgeInsets.symmetric( vertical: 25),
          child: Text(
            'Shoes for Everyone',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                'Recommended',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' See All',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]
          ),
        ),
        const SizedBox(height: 10,),

        //list of shoes for sale

        Expanded(
          child: ListView.builder(
           
            itemCount: 3,
            itemBuilder: (context, index) {
              //get a shoe from shoe list
              Shoe shoe = value.getShoeList()[index];
                //return the shoe
                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe),);
             
            },
           
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100.0, left: 25, right: 25),
          child: Divider(
            color: Colors.black,
          
          ),
        )
      ],
    ),
    );
  }
}

