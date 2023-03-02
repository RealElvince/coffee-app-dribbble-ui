import 'package:coffeedribbleapp/utilities/coffee_tile.dart';
import 'package:coffeedribbleapp/utilities/coffee_type.dart';
import 'package:coffeedribbleapp/widgets/custom_appbar.dart';
import 'package:coffeedribbleapp/widgets/custom_bottomnav.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List of Coffee type

  List coffeeTypeList = [
    ['Latte', true],
    ['Cappucino', false],
    ['Expresso', false],
    ['Rosettum', false]
  ];
  // User tap on coffee types
  selectedCoffeeType(int index) {
    setState(() {
      // This loop makes selection false
      for (int i = 0; i < coffeeTypeList.length; i++) {
        coffeeTypeList[i][1] = false;
      }
      coffeeTypeList[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: CustomAppBar(),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Column(
        children: [
          // Sometimes having coffee with your friend ,is all the therapy that you need.
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(
              'Sometimes having coffee with your friend is a therapy.',
              style: GoogleFonts.aBeeZee(fontSize: 25.0),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          // search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[900],
                  boxShadow: const [
                    BoxShadow(blurRadius: 4.0, color: Colors.grey)
                  ]),
              child: const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Find your coffee...',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          // ListView of coffee type
          SizedBox(
            height: 30.0,
            child: ListView.builder(
              itemCount: coffeeTypeList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CoffeeType(
                  coffeeType: coffeeTypeList[index][0],
                  isSelected: coffeeTypeList[index][1],
                );
              },
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          // listview horixontal of coffee tile
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                //Latte
                CoffeeTile(
                    coffeeImagePath: 'images/latte.png',
                    coffeeName: 'Latte',
                    coffeePrice: '1500 KES'),
                // Cappucino
                CoffeeTile(
                    coffeeImagePath: 'images/java.png',
                    coffeeName: 'Cappucino',
                    coffeePrice: '1700 KES'),
                // Expresso
                CoffeeTile(
                    coffeeImagePath: 'images/image1.png',
                    coffeeName: 'Expresso',
                    coffeePrice: '2000 KES'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
