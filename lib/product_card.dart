import 'package:flutter/material.dart';
import 'product.dart';

class ProductCard extends StatelessWidget{
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Colors.black,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color:Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child:Padding (
        padding: const EdgeInsets.all(10) ,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    product.image,
                    fit:BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color:Colors.blueGrey,
                      child: const Icon(
                        Icons.image_not_supported,
                        size:40,
                      ),
                    );
                    },
                  ),
                ),
              ),
            ),
  
  const SizedBox(height:20),
    Text(
       product.name,
        maxLines: 1,
         overflow: TextOverflow.ellipsis,
          style:const TextStyle(
           fontSize: 22,
             color: Colors.pink,
               fontWeight: FontWeight.bold,
                ),
                  ),

     const SizedBox(height: 12),
       Text(
        product.category,
          style:TextStyle(
            fontSize: 14,
              color:Colors.pink,
                ),
                  ),

           const SizedBox(height: 12),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '${product.price} сом',
                        maxLines: 1,
                        style:  const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                        ),
                      ),
                    ),

                    const Icon(
                      Icons.favorite_border,
                      color: Colors.pink,
                    )
                ],
              )
          ],
        ),
      ) ,
    );
  } 
}