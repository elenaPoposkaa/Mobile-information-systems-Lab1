import 'package:flutter/material.dart';
import 'package:lab1/models/clothes_model.dart';

import '../widgets/clothes_grid.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const List<String> imagesURL = ["https://alyceparis.com/cdn/shop/files/7106_IVORY_02_1000x.jpg?v=1729785546",
  "https://cdn.shopify.com/s/files/1/0744/9541/files/AndreaAndLeoA1237_600x.jpg?v=1705396098",
  "https://cdn.shopify.com/s/files/1/0782/9671/1442/files/cd848-171409_360x504.jpg?v=1724348918",
  "https://thedresswarehouse.com/cdn/shop/files/light-blue-small_1200x.jpg?v=1726014183",
  "https://cdn.shopify.com/s/files/1/0576/1132/1512/files/29117_FUSCHIA_0113_540x.jpg?v=1715376611",
  "https://forlovebride.com/cdn/shop/files/207423-J072ForLove-Bridal-Wedding-Dress-Bridal-Gowns-Los-Angeles-Galia-Lahav-Berta-Muse-Jolie-Pronovias-Mariana-Hardwick-Valdrin-Sahiti-Berta-Sima-Elysee-Enzoani-liz-martinez-Pallas-c.jpg?v=1725818787"];

class _MyHomePageState extends State<MyHomePage> {

  List<Clothes> clothes = List.generate(imagesURL.length, (index) =>
      Clothes(id: index, name: "Prom dress $index", img: imagesURL[index], description: "More details for dress $index", price: 50 + 2 * index - 15)
  );

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ClothesGrid(clothes: clothes),
    );
  }
}
