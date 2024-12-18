import 'package:flutter/material.dart';
import 'package:products/pages/thirdpage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final heigh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: const Color(0xffFFFFF),
        width: width,
        height: heigh,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onDoubleTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Thirdpage(),
                      ));
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 30),
                  width: width,
                  height: heigh * 0.6,
                  decoration: const BoxDecoration(
                    color: Color(0xffCFC3BC),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Image.asset(
                    'images/i1.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: width,
                margin: const EdgeInsets.only(left: 30, top: 30, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Find The\nBest Collections",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff133F67),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Get your dream item with easly with fashionhub\nand get other intresting offer",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff133F67),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: width * 0.4,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          height: 60,
                          child: const Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff133F67),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: width * 0.4,
                          decoration: BoxDecoration(
                            color: const Color(0xffEF8120),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          height: 60,
                          child: const Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
