import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:spool/Ui%20only/customgridview.dart';
import 'package:spool/Ui%20only/customtextstyle.dart';

class FirstEntryPage extends StatelessWidget {
  const FirstEntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final orientationData = MediaQuery.of(context).orientation;

    final List<String> images = [
      'assets/images/30.jpg',
      'assets/images/2967.jpg',
      'assets/images/37.jpg',
      'assets/images/30.jpg',
      'assets/images/37.jpg',
      'assets/images/36.jpg',
      'assets/images/2967.jpg'
    ];
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  first container  //
            Container(
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              height: 70,
              width: double.infinity,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.sort,
                      size: 33,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_2_outlined,
                      size: 33,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.blueGrey,
                  ),
                  hintText: 'Search your product here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(9.0),
              child: Text(
                'Shoes and Sandals',
                style: CustomTextStyle.heading,
              ),
            ),

            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFFDAB9),
                borderRadius: BorderRadius.circular(7),
              ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Other Items',
                style: orientationData == Orientation.portrait
                    ? CustomTextStyle.heading
                    : CustomTextStyleResponsive.headingresponsive,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(6),
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                //
              ),
              child: const CustomGridView(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.blueGrey,
        height: 55,
        backgroundColor: Colors.amber.shade50,
        items: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.home,
              size: 35,
            ),
          ),
          Icon(
            Icons.person,
            size: 35,
          ),
          Icon(
            Icons.shopping_cart,
            size: 35,
          )
        ],
        animationCurve: Curves.easeInOutBack,
        animationDuration: const Duration(milliseconds: 80),
      ),
    );
  }
}
