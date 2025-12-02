import 'package:flutter/material.dart';
import 'home_page.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Center( 
          
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:30.0),
            child: Column(       
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset('lib/Images/goldstarlogo.png', height:290,
                  ),
                ),
            
                const SizedBox(height: 25,),
            
                //title
                const Text (
                  'Own Your Street',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 54, 50, 50),
                  ),
            
                ),
            
                 const SizedBox(height: 20,),
            
            
               //sub title
            
               const  Text (
                  "Nepal's Resilient FootWear Giant. Built Tough, Affordable, A Symbol Of National Pride And Style",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 113, 111, 111),
                  ),
                  textAlign: TextAlign.center,
            
                ),
            
                 const SizedBox(height: 48,),
            
                //start now button
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                      padding:EdgeInsets.all(25),
                      child:Center(
                      child: const Text('Shop Now', 
                      style: TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                        
                      
                      
                      
                      ),
                    ),
                    ),
                ),
                
              ],
            ),
          ),  
        ),
      )
     
    );
  }
} 