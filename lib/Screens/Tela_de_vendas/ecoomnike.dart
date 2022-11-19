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
            color: Color.fromARGB(255, 13, 139, 223),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: Colors.white,
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
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 13, 139, 223),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Image(image: AssetImage('img/nike1.png')),
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
                )
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
              backgroundColor: Color.fromARGB(255, 253, 253, 253),
              elevation: 20,
              onPressed: () {},
              child: const Icon(
                Icons.local_offer_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            color: Color.fromARGB(255, 255, 255, 255),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu),
                    style: const ButtonStyle(),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  IconButton(
                    icon: const Icon(Icons.chat_bubble_outline),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  IconButton(
                    icon: const Icon(Icons.person),
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
          color: Color.fromARGB(255, 255, 255, 255),
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
          color: Color.fromARGB(255, 255, 255, 255),
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
