import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ecommnike extends StatefulWidget {
  const ecommnike({super.key});

  @override
  State<ecommnike> createState() => _ecommnikeState();
}

class _ecommnikeState extends State<ecommnike> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                image: AssetImage('img/backgound.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 250, 151, 3),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage('img/bennysejerry.png'),
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    height: 320,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildCard(),
                          const SizedBox(
                            width: 16,
                          ),
                          buildCard1(),
                          const SizedBox(
                            width: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 250, 151, 3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          height: 80,
          width: 80,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 48, 214, 255),
              elevation: 20,
              onPressed: () {},
              child: const Icon(
                Icons.local_offer_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            color: Color.fromARGB(255, 19, 131, 4),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    style: const ButtonStyle(),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget buildCard() => Container(
        width: 345,
        height: 480,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Color.fromARGB(255, 48, 214, 255),
        ),
        child: Column(
          children: const [
            Image(
              image: AssetImage(
                'img/tenisnike2.png',
              ),
            )
          ],
        ),
      );
  Widget buildCard1() => Container(
        width: 345,
        height: 480,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 48, 214, 255),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          children: const [
            Image(
              image: AssetImage(
                'img/tenisnikeverso.png',
              ),
            )
          ],
        ),
      );
}
