import 'package:flutter/material.dart';

class customstack extends StatelessWidget {
  const customstack({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 74),
        child: GestureDetector(
          onTap: (){},
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 160,
                height: 123,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      blurRadius:20,
                      color: Colors.grey.withOpacity(.7),
                      )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "good seall",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$ 209.99"),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  right: 3,
                  bottom: 70,
                  child: Image.network(
                    "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
                    height: 100,
                    width: 100,
                  )),
            ],
          ),
        ),
      );
  }
}