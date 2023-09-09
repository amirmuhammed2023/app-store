import 'package:app_store2/models/products.dart';
import 'package:app_store2/services/all_products.dart';
import 'package:flutter/material.dart';
import '../helper/custom_stack.dart';

class Homepage extends StatelessWidget {
   Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "New Trends",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<List<productmodel>>(
          future: getallproducts().getproduct(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          
            ), 
            itemBuilder: (context, index) {
              return customstack() ;
             },
            );
            }
            else {
              return Center(child: CircularProgressIndicator()) ;
            }
            
          },
        ),
      )
    );
  }
}
