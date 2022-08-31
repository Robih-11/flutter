import 'package:flutter/material.dart';
import 'package:flutter_dicoding/screen/detail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dicoding/screen/detail.dart';

class ItemCards extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String location;
  final String rating;

  ItemCards({
    required this.imageUrl,
    required this.text,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Detail()));
      },
      child: Container(
        padding: EdgeInsets.all(15),
        width: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imageUrl,
              ),
              //location Name
            ),
            SizedBox(height: 15),
            //location Name
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, right: 1.0),
                  child: Icon(
                    Icons.location_pin,
                    color: Colors.greenAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, right: 30, left: 2),
                  child: Text(
                    location,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 30.0),
                  child: Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ),
                Text(
                  rating,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
