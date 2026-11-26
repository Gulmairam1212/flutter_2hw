import 'package:flutter/material.dart';
import 'product.dart';
import 'product_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Магазин',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home:  ShopePage (),
    );
  }
}
  class ShopePage extends StatelessWidget{
     ShopePage({super.key});

    final List<Product> products =  [
      Product(
        name:'Крем для лица',
        category:'Уход за кожей',
        price:900,
        image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOOAQO__VzCkL18pU74R0t3Azw9ZaS81U4-QzM7hed1Q&s=10',
      ),
      Product(
        name:'Помада',
        category:'Косметика',
        price:1500,
        image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgnP7xuaCbJq-a1uv-ctxc_gua0-BwqryEB82fawAJKg&s=10',
      ),
      Product(
        name:'Духи',
        category:'Порфюмерия',
        price:12000,
        image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT75RS_MFNPB1QF2b90Oad-AD-1lXBopw5-0cfim_0vQ&s=10',
      ),
      Product(
        name:'Сыворотка',
        category:'Уход за кожей',
        price:2300,
        image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRU7WZKSbOE4hkLRxkEW1D5SANhT17M_8uFuIaP07qVQ&s=10',
      ),
      Product(
        name:'Шампунь ',
        category:'Уход за волосами',
        price:790,
        image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbACYQD7x6W8ezmnYWAhorbiexudoNBnoPWrUXwek8cA&s=10',
      ),
      Product(
        name:'Тущь для ресниц',
        category:'Косметика',
        price:1900,
        image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXNfMSA7LnmNfev1yV8FEB-JqFBMY15qXPncojRKfGrA&s=10',
      ),
      Product(
        name:'Крем для рук',
        category:'Уход за кожей',
        price:2200,
        image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-AIs-qQauvcgC_lFOBJpvgzZCkMOvg2NYZ9VHY6J14Q&s=10',
      ),
      Product(
        name:'Пудра',
        category:'Макияж',
        price:600,
        image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZfkmadNRiv3GKcN0LW2pLHJBsTYH0U6MIZSlNWUGnuA&s=10',
      ),
      Product(
        name:'Маска для лица',
        category:'Уход за кожей',
        price:2000,
        image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFx0VsxLkeLadBT2jfiwW5v6jeaGlAwYf35o6JWApxUQ&s=10',
      ),
      Product(
        name:'Тени для век',
        category:'Макияж',
        price:1800,
        image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQFxmqZYqxStvnwh9gyaCl-lnm8KSo101FYSzSb_t7ow&s=10',
        
      ),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F7),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        foregroundColor: Colors.black,
        title: const Text(
          'Beauty shop',
            style:TextStyle(
             fontWeight: FontWeight.bold,
              ),
                ),

   actions:const [
     Padding(
       padding: EdgeInsetsGeometry.only(right: 16),
         child:Icon(Icons.shopping_cart_outlined),
              ),
                ],
                  ),

      body:Padding(
        padding: EdgeInsets.all(12),
        child:GridView.builder(
          
            itemCount: products.length,
             gridDelegate: 
              const SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
                crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                   childAspectRatio: 0.68,
                    ),

       itemBuilder: (context, index) {
         return ProductCard(
           product: products[index],
              );
               },
                ),
  
                  ),
                   );
                    }
                     }
