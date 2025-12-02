import 'package:flutter/material.dart';
import 'package:flutter_shopping_shoes/components/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe; // should be final in StatelessWidget
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, bottom: 15,right: 15),
      width: 280,
      padding: EdgeInsets.all(12), // added padding for spacing
      decoration: BoxDecoration(
        color: Colors.grey[400], // fixed invalid 150 shade
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),

          SizedBox(height: 5),

          // description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              shoe.description,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),

          SizedBox(height: 10),

          // price + name row
          Padding(
            padding: const EdgeInsets.only(left:15.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '\$${shoe.price}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[600],
                      ),
                    ),
                  
                  ],
                ), 
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius:  BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                       
                      ),
                      child: const Icon(Icons.add,
                      color: Colors.white,
                      ),  
                      ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
