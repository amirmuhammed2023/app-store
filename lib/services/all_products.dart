import 'dart:convert';

import 'package:app_store2/helper/api.dart';
import 'package:app_store2/models/products.dart';
import 'package:http/http.dart' as http;

class getallproducts {
  Future<List<productmodel>> getproduct() async {
    
      http.Response response = await api().get(url:"https://fakestoreapi.com/products") ;
      
      List<dynamic> data = jsonDecode(response.body) ;
      List<productmodel> productlist = [];

      for (int i = 0; i <= productlist.length; i++) {
        productlist.add(productmodel.fromjson(data[i]));
      }

      return productlist;
    
  }
}
