import 'package:flutter/material.dart';
import 'package:flutter_dicoding/card/item_cards.dart';
import 'package:flutter_dicoding/card/item_types.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bottom_navigation_bar/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  final List All = [
    [
      'All',
      true,
    ],
    [
      'Popular',
      false,
    ],
    [
      'Recommended',
      false,
    ],
    [
      'Most Viewed',
      false,
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f2f6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 20,
            right: 20,
          ),
          child: Icon(Icons.menu),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 20,
              right: 20,
            ),
            child: Image.asset('assets/account.png'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Where do you want \nto go?',
              style: GoogleFonts.sourceSansPro(
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xffffffff),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.tune),
                  hintText: 'Discover a city',
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Explore cities',
              style: GoogleFonts.sourceSansPro(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            //list items
            Container(
              height: 20,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: All.length,
                itemBuilder: (context, index) {
                  return ItemTypes(
                    All: All[index][0],
                    isSelected: All[index][1],
                    onTap: () {},
                  );
                },
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ItemCards(
                    imageUrl: 'assets/bali.png',
                    text: 'Uluwatu Temple , Bali',
                    location: 'Indonesia',
                    rating: '\n4.9',
                  ),
                  ItemCards(
                    imageUrl: 'assets/mount.png',
                    text: 'Mount Rinjani, Indonesia',
                    location: 'Indonesia',
                    rating: '\n4.8',
                  ),
                  ItemCards(
                    imageUrl: 'assets/rinjani.png',
                    text: 'Lombok, Indonesia',
                    location: 'Indonesia',
                    rating: '\n4.7',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
