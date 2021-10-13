import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem(String title, int index) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: const Color(0xff1D1E3C),
                  fontWeight: index == selectedIndex
                      ? FontWeight.w500
                      : FontWeight.w300),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? const Color(0xffFE998D)
                    : Colors.transparent,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 72,
                      height: 40,
                    ),
                    Row(
                      children: [
                        navItem('Guides', 0),
                        const SizedBox(
                          width: 50,
                        ),
                        navItem('Pricing', 1),
                        const SizedBox(
                          width: 50,
                        ),
                        navItem('Team', 2),
                        const SizedBox(
                          width: 50,
                        ),
                        navItem('Stories', 3),
                      ],
                    ),
                    Image.asset(
                      'assets/images/button_account.png',
                      width: 163,
                      height: 53,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 76,
                ),
                Image.asset(
                  'assets/images/illustration.png',
                  width: 550,
                ),
                const SizedBox(
                  height: 84,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/icon_scroll.png',
                      width: 24,
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Text(
                      'Scroll to Learn More',
                      style: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
