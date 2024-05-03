import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/utlis/widgets/divider.dart';
import 'package:ecommerce/utlis/widgets/gridView.dart';

class HomePage extends StatelessWidget {
  final List<String> imgList = [
    'https://static.vecteezy.com/system/resources/previews/011/871/820/large_2x/online-shopping-on-phone-buy-sell-business-digital-web-banner-application-money-advertising-payment-ecommerce-illustration-search-vector.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: imgList.map((item) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.network(
                          item,
                          fit: BoxFit.cover,
                        ),
                      ),

                    ],
                  ),
                );
              }).toList(),
            ),
            CustomDivider(height: 1, thickness: 1, color: Colors.blue.shade50),
            GridViewWidget(),
          ],
        ),
      ),
    );
  }
}
