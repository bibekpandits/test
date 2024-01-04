import 'package:flutter/material.dart';
import 'package:spool/stack.dart';

class Apple extends StatefulWidget {
  const Apple({super.key});

  @override
  State<Apple> createState() => _AppleState();
}

class _AppleState extends State<Apple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade300,
      ),
      body: Stack(children: [
        const Positioned(
            left: 100,
            top: 100,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.yellow,
              backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2016/04/07/06/53/bmw-1313343_640.jpg',
              ),
            )),
        const Positioned(
            left: 40,
            top: 320,
            child: Text(
              'This is my PANDIT motorbike',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
        Positioned(
            top: 620,
            left: 100,
            child: ElevatedButton(
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(250, 60)),
                  // backgroundColor: MaterialStatePropertyAll(Colors.black12),
                  shadowColor: MaterialStatePropertyAll(
                    Colors.pink,
                  ),
                  elevation: MaterialStatePropertyAll(25),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Laad()));
                },
                child: Text(
                  'Press here',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))),
        Positioned(
            top: 380,
            left: 50,
            right: 40,
            child: Column(
              children: [
                Text(
                  'Harley-Davidson was founded in 1903 in Milwaukee, WI and officially incorporated in 1907, with Walter Davidson acting as the first president. Arthur Davidson became the first general sales manager and the secretary, while William Davidson was the first works manager.',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            )),
      ]),
    );
  }
}
