import 'package:flutter/material.dart';

class Laad extends StatelessWidget {
  const Laad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
          child: OrientationBuilder(builder: (context, orientationBuilder) {
        return Stack(
          children: [
            Positioned(
              left: 50,
              child: Text(
                'SpoiderMon',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
                child: Image.network(
              'https://www.cleverfiles.com/howto/wp-content/uploads/2018/03/minion.jpg',
              height: 780,
              width: 500,
            )),
            Positioned(
              top: 80,
              left: 0,
              child: Transform.rotate(
                angle: 12,
                child: Image.network(
                  'https://i.pinimg.com/736x/76/46/a9/7646a94792eeb2b072335e16dd7c9f11.jpg',
                  scale: 5,
                  height: 300,
                  width: 200,
                ),
              ),
            ),
            Positioned(
                top: 150,
                left: 150,
                child: Transform.rotate(
                  angle: 10,
                  child: Image.network(
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/9d4a564f-746a-4c09-80f9-fac15b21c406/dfy91yt-976c34d9-98d7-4db0-beda-6d1de266b586.jpg/v1/fill/w_1920,h_1097,q_75,strp/batman_wallpaper_by_imagineaiart99_dfy91yt-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzlkNGE1NjRmLTc0NmEtNGMwOS04MGY5LWZhYzE1YjIxYzQwNlwvZGZ5OTF5dC05NzZjMzRkOS05OGQ3LTRkYjAtYmVkYS02ZDFkZTI2NmI1ODYuanBnIiwiaGVpZ2h0IjoiPD0xMDk3Iiwid2lkdGgiOiI8PTE5MjAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvOWQ0YTU2NGYtNzQ2YS00YzA5LTgwZjktZmFjMTViMjFjNDA2XC9pbWFnaW5lYWlhcnQ5OS00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.ooWxbsNn7qj6IMng3QXmi__8TECqYg-Qf2U0RePZtD8',
                    height: 100,
                    width: 200,
                  ),
                )),
            Positioned(
                top: 560,
                left: 80,
                child: ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(250, 60)),
                      backgroundColor: MaterialStatePropertyAll(Colors.pink),
                      shadowColor: MaterialStatePropertyAll(Colors.pink),
                      elevation: MaterialStatePropertyAll(18),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Gula',
                      style: TextStyle(color: Colors.white),
                    ))),
          ],
        );
      })),
    );
  }
}
