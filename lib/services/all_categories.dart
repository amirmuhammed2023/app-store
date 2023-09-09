import '../helper/api.dart';

class getallcategories {
  Future<List<dynamic>> getcategoty() async {

    List<dynamic> data = await api().get(url: "https://fakestoreapi.com/products/categories") ;

      /*List<dynamic> categorylist = [] ; 
  for (int i = 0; i <= data.length; i++) {
    categorylist.add(data[i]) ;
  }*/

      return data;
    } 
  }

