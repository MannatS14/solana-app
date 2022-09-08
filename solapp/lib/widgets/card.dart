import 'package:flutter/material.dart';
import 'upper_bar.dart';
import 'menu_button.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'glsom_container.dart';
import '../screens/bid.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final textController = TextEditingController();
  List list = [
    {'text': 'play'},
    {'text': 'play'},
    {'text': 'play'},
    {'text': 'play'},
    {'text': 'play'},
    {'text': 'play'},
    {'text': 'play'},
    {'text': 'play'},
    {'text': 'play'},
    {'text': 'play'},
    {'text': 'play'},
    {'text': 'play'},
    {'text': 'play'},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: const Color.fromARGB(232, 0, 0, 0),
          height: double.infinity,
          width: double.infinity,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  const UpperBar(),
                  //filter option
                  const SizedBox(height: 10),
                  Container(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.filter_alt_outlined,
                            color: Colors.black,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Filter',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    fit: StackFit.loose,
                    children: [
                      GridView.count(
                        padding: const EdgeInsets.all(5),
                        childAspectRatio: (75 / 100),
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 7,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: list.map((e) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const BidNft(),
                              ));
                            },
                            child: GlassmorphicFlexContainer(
                              borderRadius: 35,
                              linearGradient: LinearGradient(
                                colors: [
                                  const Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.1),
                                  const Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.05),
                                ],
                              ),
                              border: 20,
                              blur: 20,
                              borderGradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  const Color.fromARGB(0, 255, 255, 255)
                                      .withOpacity(0.5),
                                ],
                              ),
                              child: const GlassContainer(),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Positioned(bottom: 15, child: MenuButton()),
          ]),
        ),
      ),
    );
  }
}
