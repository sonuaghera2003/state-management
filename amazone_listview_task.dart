import 'package:flutter/material.dart';
import 'package:state_management/productmode.dart';

List nameList = [
  {
    "image": "https://m.media-amazon.com/images/I/71KkjR4WJyL.UX522.jpg",
    "name": "vjf",
    "price": 4445,
  },
  {
    "image":
        "https://m.media-amazon.com/images/I/719orzzm5rL.AC_UL480_FMwebp_QL65.jpg",
    "name": "vjf",
    "price": 4445,
  },
  {
    "image":
        "https://m.media-amazon.com/images/I/710D0XORbhL.AC_UL480_FMwebp_QL65.jpg",
    "name": "vjfjkkkkkkkkkkkk",
    "price": 4445,
  },
];

class ListviewbuiderdemoTask extends StatefulWidget {
  const ListviewbuiderdemoTask({
    super.key,
  });

  @override
  State<ListviewbuiderdemoTask> createState() => _ListviewbuiderdemoTaskState();
}

class _ListviewbuiderdemoTaskState extends State<ListviewbuiderdemoTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: productList.length,
        // itemCount: nameList.length,
        // scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDeatial(
                            image: productList[index].image!,
                            name: productList[index].name!,
                            price: productList[index].price.toString(),
                          ),
                        ),
                      );
                    },
                    child: ClipOval(
                      child: Image.network(
                        height: 200,
                        width: 100,
                        fit: BoxFit.cover,
                        nameList[index]["image"].toString(),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          nameList[index]["name"],
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Text(nameList[index]["price"].toString()),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class ProductDeatial extends StatefulWidget {
  final String image;
  final String name;
  final String price;

  const ProductDeatial({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  State<ProductDeatial> createState() => _ProductDeatialState();
}

class _ProductDeatialState extends State<ProductDeatial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("productDetials"),
      ),
      body: Column(
        children: [
          Image.network(
            height: 200,
            width: 100,
            fit: BoxFit.cover,
            widget.image,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Text(
              widget.name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(widget.price),
        ],
      ),
    );
  }
}
