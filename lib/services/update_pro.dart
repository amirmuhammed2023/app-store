import 'package:app_store2/helper/api.dart';
import 'package:app_store2/models/products.dart';

class updateproduct{
  Future<productmodel> updateone ({required int id ,required String title , required String price , required String image , required String description , required String category}) async {
  Map<String , dynamic> data = await api().put(url: "https://fakestoreapi.com/products/$id",
    body:{
      "title": title ,
      "price": price ,
      "description": description ,
      "image": image ,
      "category": category ,
    },) ;
   
  return productmodel.fromjson(data) ;

  }
}