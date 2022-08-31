import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dicoding/home/home_page.dart';
// import 'package:slider_button/slider_button.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 110.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Traveling_bro.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
              left: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore Beauty \nOf Journey',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 33,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Everything you can imagine, is here',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                // Center(
                //   child: Padding(
                //     padding: const EdgeInsets.only(
                //       top: 470.0,
                //       left: 50,
                //       right: 50,

                //     ),
                //     child: OutlinedButton(
                //       style: OutlinedButton.styleFrom(
                //         shadowColor: Color(0xffcfcfcf),
                //         elevation: 5,
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(30),
                //         ),
                //       ),
                //       onPressed: () {},
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Text(
                //             'Swipe to explore now',
                //             style: GoogleFonts.poppins(
                //               color: Colors.black,
                //               fontSize: 16,
                //               fontWeight: FontWeight.w600,
                //             ),
                //           ),
                //           Image.asset(
                //             'assets/arrow_right_circle.png',
                //             width: 25,
                //             color: Colors.black,
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(height: 6),
                // Center(
                //   child: Text(
                //     'Privacy Police',
                //     style: GoogleFonts.poppins(
                //       color: Colors.black,
                //       fontWeight: FontWeight.w300,
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 450.0,
                    left: 20,
                    right: 20,
                  ),
                  child: Center(
                    child: ConfirmationSlider(
                      width: 270,
                      height: 60,
                      backgroundShape: BorderRadius.circular(50),
                      shadow: BoxShadow(
                        blurRadius: 10,
                      ),
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      text: ('Swipe to explore now'),
                      onConfirmation: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Center(
                  child: Text(
                    'Privacy Police',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
