import 'package:app_store2/models/products.dart';

import '../helper/api.dart';

class getcategory {
  Future<List<productmodel>> thecategory(
      {required String category_name}) async {
    
    List<dynamic> data = await api()
        .get(url: "https://fakestoreapi.com/products/category/$category_name");

    List<productmodel> categorylist = [];

    for (int i = 0; i <= categorylist.length; i++) {
      categorylist.add(productmodel.fromjson(data[i]));
    }

    return categorylist;
  }
}
