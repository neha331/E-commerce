import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/models/product_model.dart';
import 'package:flutter_application_1/screens/home/details_screen.dart';

// class ProductScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListView.builder(
//       itemCount:demoProducts.length,
//       itemBuilder: (context, index){
//       final product = demoProducts[index];  
//            return ListTile(
//             leading: Image.asset(product.images.first, width: 100, fit: BoxFit.cover), // Display the first image
//             title: Text(product.title),
//             subtitle: Text("\$${product.price}"),
//             trailing: Icon(Icons.arrow_forward_ios),
//            );
//       }
//       );
//   }
  
//}


// import 'package:flutter/material.dart';
// import 'your_product_model_file.dart'; // Import your Product model and demoProducts list

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
  Product product = demoProducts[index];
        
  return GestureDetector(
    onTap: () {
      // Navigate to the DetailsScreen with the selected product
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreen(product: product),
        ),
      );
    },

          // Create a custom layout for each product
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image.asset(
                  product.images.first, // Displaying only the first image as an example
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '\$${product.price}',
                        style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                      ),
                      // You can add more details as needed
                    ],
                  ),
                ),
              ],
            ),
          ),
  );
        }
      
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/models/product_model.dart';
// //import 'package:flutter_application_1/models/product_model.dart';
// import 'package:flutter_application_1/screens/home/details_screen.dart';
// import 'package:flutter_application_1/screens/home/product_card.dart';
// // import 'package:shop_app/components/product_card.dart';
// // import 'package:shop_app/models/Product.dart';

// // import '../details/details_screen.dart';
// //call to product_card.dart
// class ProductsScreen extends StatelessWidget {
//   const ProductsScreen({super.key});

//   static String routeName = "/products";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Products"),
//       ),
//       body: SafeArea( // added contant keyword
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20),// removed const
//           child: GridView.builder(
//             itemCount: demoProducts.length,
//             gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//               maxCrossAxisExtent: 200,
//               childAspectRatio: 0.7,
//               mainAxisSpacing: 20,
//               crossAxisSpacing: 16,
//             ),
//             itemBuilder: (context, index) => ProductCard(
//               product: demoProducts[index],
//               onPress: () {}//=> Navigator.pushNamed(
//               //   // context,
//               //   // DetailsScreen.routeName,
//               //   //  arguments:
//               //   //     ProductDetailsArguments(product: demoProducts[index]),
//               // ),
              
//             ),
//           ),
//          ),
//       ),
//     );
//   }
// }
