import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});
  void so() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assests/1jpeg.jpg',
                        ),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                child: Container(
                  height: 450,
                  width: double.infinity,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 255, 255, 255),
                        Color.fromARGB(230, 255, 255, 255),
                        Color.fromARGB(180, 255, 255, 255),
                        Color.fromARGB(0, 255, 255, 255)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 120.0,
                        width: 150.0,
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            'Discover NFT Collections',
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                        width: 15.0,
                      ),
                      Container(
                        width: 300,
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            'Explore the top collections of NFTs and buy and sell your NFTs as well',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15.0,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
                width: 10.0,
              ),
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    print('Tap');
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.fromLTRB(10, 15, 20, 20),
                    margin: const EdgeInsets.all(30),
                    height: 65,
                    width: 290,
                    decoration: const BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                        //more than 50% of width makes circle
                        ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 35,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))
                              //more than 50% of width makes circle
                              ),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                            size: 30.0,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                          width: 30.0,
                        ),
                        Text(
                          'Start Experience',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontSize: 24.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
                width: 10.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}