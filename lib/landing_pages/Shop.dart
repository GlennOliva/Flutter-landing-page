import 'package:flutter/material.dart';

class ShopMenu extends StatelessWidget {
  const ShopMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('images/applelogo.png'), // Replace with your logo image path
          onPressed: () {
            // Handle logo button press if needed
            
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back), // Hamburger menu icon
            onPressed: () {
              // Handle menu button press if needed
              Navigator.pop(context);
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(230), // Set the height of your content
          child: Container(
            width: 500,
            height: 230,
            decoration: const BoxDecoration(
              color: Colors.grey, // Set the background color to grey
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/iphone12.png',
                  width: 100,
                  height: 150, // Adjust the height as needed
                  fit: BoxFit.cover, // Ensure the image covers the available space
                ),
                const SizedBox(width: 10), // Add spacing between the image and text
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Apple Latest Products',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
     body: Container(
  margin: const EdgeInsets.all(15),
   child: Expanded(
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      Column(
        children: [
          const Text(
            'Apple Categories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 150,
            height: 150,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/cat1-vec.png',
                  width: 100,
                  height: 100,
                ),
                const Text(
                  'Mac',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
         const SizedBox(height: 10), // Add spacing below the "Apple Categories" container
const Text(
  'Apple Best Products',
  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
),
    Row(
      children: [
        Container(
          width: 180,
          height: 200,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/iphone11.png',
                width: 60,
                height: 60,
              ),
              const Text(
                'Iphone 11',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Price: ₱21,000',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Stock: 10',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150, // Set the width as per your requirements
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Add your add to cart logic here
                      },
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.white, // Set icon color to white
                      ),
                      label: Text(
                        'Add to Cart',
                        style: TextStyle(color: Colors.white), // Set text color to white
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey, // Set the background color to grey
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
    
    
    

  

      // Add more product containers in a similar format
    

  



        ],
        
      ),
      
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/cat2-vec.png',
                    width: 80,
                    height: 100,
                  ),
                  const Text(
                    'Apple Watch',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/cat3-vec.png',
                    width: 80,
                    height: 100,
                  ),
                  const Text(
                    'Iphone',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      
    ],
  ),
),

    )
    );
  }}