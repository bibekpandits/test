import 'package:flutter/material.dart';

class CongratulationUi extends StatefulWidget {
  const CongratulationUi({super.key});

  @override
  State<CongratulationUi> createState() => _CongratulationUiState();
}

class _CongratulationUiState extends State<CongratulationUi> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: SafeArea(
        child: OrientationBuilder(builder: (context, orientationBuilder) {
          return Stack(children: [
            Positioned(
              left: orientation == Orientation.portrait ? -45 : -55,
              top: 40,
              child: const Image(
                  image: AssetImage(
                    'assets/images/heart.png',
                  ),
                  height: 100),
            ),
            Positioned(
              top: 70,
              left: -30,
              child: Image.asset(
                'assets/images/heart.png',
                scale: 3,
              ),
            ),
            Positioned(
              top: orientation == Orientation.portrait ? 5 : 10,
              left: orientation == Orientation.portrait ? 84 : 250,
              child: const Text(
                'Congratulations',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              // shape-50(yellow Star)
              left: orientation == Orientation.portrait ? 18 : 50,
              top: 150,
              child: const Image(
                image: AssetImage(
                  'assets/images/shape-59.png',
                ),
                height: 100,
              ),
            ),
            Positioned(
              // rectangle left side
              left: orientation == Orientation.portrait ? 36 : 200,

              top: orientation == Orientation.portrait ? 205 : 54,
              child: Align(
                child: SizedBox(
                  width: 170,
                  height: 240,
                  child: Image.asset(
                    'assets/images/rectangle-111.png',
                    width: 200,
                    height: 240,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle right side
              left: orientation == Orientation.portrait ? 210 : 380,
              top: orientation == Orientation.portrait ? 230 : 54,
              child: Image.asset(
                'assets/images/rectangle-112.png',
                width: orientation == Orientation.portrait ? 169 : 300,
                height: 240,
              ),
            ),
            Positioned(
                top: 405,
                left: 230,
                child: Image.asset(
                  'assets/images/shape-59.png',
                  scale: 2,
                )),
            Positioned(
              // image between the two mirrorlike container..
              left: 170,
              top: 320,

              height: 70,
              child: Image.asset(
                'assets/images/heart.png',
                scale: 3,
              ),
            ),
            const Positioned(
                top: 490,
                left: 138,
                child: Text(
                  'Ratna',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                )),
            Positioned(
              //// Elevated button for hello
              top: 640,
              left: 40,

              child: ElevatedButton(
                style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(350, 60)),
                    elevation: MaterialStatePropertyAll(20),
                    shadowColor: MaterialStatePropertyAll(Color(0xfffa5480)),
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xfffa5480))),
                onPressed: () {},
                child: const Text(
                  'Say Hello 👋',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 720,
              left: 80,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Not Now. I\'ll Talk Later',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              // blue tick verified image
              top: 500,
              left: 250,

              height: 30,
              child: Image.asset('assets/images/check-z13.png'),
            ),
            const Positioned(
              // longtext for ratna
              top: 555,
              left: 10,
              right: 0,

              child: Text(
                'Let\'s ask her about something interesting or you can just start with "hello".',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Positioned(
              top: orientation == Orientation.portrait ? 435 : 200,
              left: 5,
              height: 140,
              child: Image.network(
                'https://tr.rbxcdn.com/925753b92af735626bb21383d4d65dcd/420/420/Hat/Png',
                color: const Color(0xfffa5480),
              ),
            ),
            Positioned(
              top: 160,
              right: orientation == Orientation.portrait ? 70 : 30,
              height: 50,
              child: Image.asset('assets/images/vuesax-bold-lovely.png'),
            ),
            Positioned(
              right: 40,
              top: 65,
              height: 50,
              child: Image.asset('assets/images/vuesax-bold-lovely.png'),
            ),
            //   Positioned(
            //     top: orientation == Orientation.portrait ? 60 : 70,
            //     left: orientation == Orientation.portrait ? 110 : 280,
            //     child: Container(
            //       height: 50,
            //       width: 200,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(😎,
            //           color: const Color(0xfffa5480)),
            //     ),
            //   ),
            //   Positioned(
            //     top: orientation == Orientation.portrait ? 60 : 70,
            //     left: orientation == Orientation.portrait ? 110 : 280,
            //     child: Transform.rotate(
            //       angle: -0.1,
            //       child: Container(
            //         height: 50,
            //         width: 200,
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(😎,
            //             color: Colors.black),
            //         child: const Align(
            //           child: Text(
            //             'Its a Match',
            //             style: TextStyle(
            //                 fontSize: 20,
            //                 color: Colors.white,
            //                 fontWeight: FontWeight.bold),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ],
          ]);
        }),
      ),
    );
  }
}
