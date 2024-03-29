import 'package:cookbookapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

//Onboarding screen meant to be seen only once
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //style for elevated button
  ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.green[900],
    minimumSize: const Size(200, 46),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
  );

  //checks to see if user has already encountered the onboarding screen
  _storeOnBoardInfo() async {
    int viewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', viewed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0.1, 0.6, 0.8, 0.9],
              colors: [
                Colors.white,
                Colors.green[100]!,
                Colors.green[200]!,
                Colors.green[300]!
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 800.0,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                              child: Stack(
                            children: [
                              //overlays images over circle
                              Positioned(
                                bottom: 10,
                                right: -8,
                                child: Image.asset(
                                  'assets/images/greencircle.png',
                                  width: 350,
                                  height: 400,
                                ),
                              ),
                              Image.asset('assets/images/cooking.png',
                                  height: 400.0, width: 400.0),
                            ],
                          )),
                        ),
                        const SizedBox(height: 30.0),
                        Text(
                          "Start Cooking With Your Favorite Recipes",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[500]),
                        ),
                        const SizedBox(height: 15.0),
                        Text(
                            "This app offers many options for you, family, and friends to enjoy. Create lists, favorite recipes you love, and explore the endless possibilities in the kitchen",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              fontSize: 15,
                              color: Colors.green[500],
                            )),
                        const SizedBox(height: 50),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(width: 70),
                            ElevatedButton(
                              style: elevatedButtonStyle,
                              onPressed: () async {
                                //await _storeOnBoardInfo(); commented out to continue seeing onboarding screen for now
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const MyHomePage(
                                            title: 'Cookbook App')));
                              },
                              child: Text(
                                "Get Started",
                                style: GoogleFonts.roboto(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
