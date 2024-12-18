import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:products/model/product_model.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({super.key});

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  List<String> chipNames = ['All', 'Men', 'Women', 'Kids', 'Others'];
  late String selectedChip;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedChip = chipNames[0];
  }

  void changeSlectedChip(int index) {
    setState(() {
      selectedChip = chipNames[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.category_sharp,
          size: 30,
        ),
        actions: const [
          Icon(
            Icons.female_rounded,
            size: 30,
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Explore",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(0xff133F67),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Best trendy Collection",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xff133F67),
              ),
            ),
            SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: chipNames.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: GestureDetector(
                    onTap: () => changeSlectedChip(index),
                    child: Chip(
                      backgroundColor: chipNames[index] == selectedChip
                          ? Color(0xffEF8221)
                          : Colors.grey.shade100,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: Colors.grey.shade100,
                          )),
                      label: Text(
                        chipNames[index],
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: MasonryGridView.builder(
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              itemCount: cloths.length,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(cloths[index].image),
                        ),
                        Positioned(
                          bottom: -15,
                          right: 18,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.shopping_bag_outlined,
                                size: 23,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '\$${cloths[index].price}',
                      style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff133F67),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '${cloths[index].clothName}',
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff133F67),
                      ),
                    )
                  ],
                );
              },
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 246, 154, 69),
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.cart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.settings,
            ),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
