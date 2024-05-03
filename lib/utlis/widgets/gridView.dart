import 'package:ecommerce/utlis/Screens/Category/clothes_category.dart';
import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10
        ),
        itemCount: 20, // Set the itemCount as required
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
               ClothesCategory()
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade50),
                borderRadius: BorderRadius.circular(12)
              ),
              child: const Center(
                child: Text('Category',
                style: TextStyle(color: Colors.black),
                )
                ,
              ),
            ),
          );
        },
      ),
    );
  }
}
