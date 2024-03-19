import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/container_box.dart';
import 'package:flutter_web_app/components/subtitle.dart';
import 'package:flutter_web_app/components/tab_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingPageWeb extends StatefulWidget {
  const StartingPageWeb({super.key});
  @override
  State<StartingPageWeb> createState() => _StartingPageWebState();
}

class _StartingPageWebState extends State<StartingPageWeb> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: screenSize.height * 0.1,
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          size: 25,
          color: Colors.black,
        ),
        title: Padding(
          padding: EdgeInsets.only(
            left: 0,
            right: screenSize.width * 0.01,
          ),
          child: const TopNaviagtionBar(
            barItem: [
              "O Firmie",
              "Oferta",
              "Usługi",
              "Bezpieczeństwo",
              "Kontakt",
            ],
            barIcon: Icon(Icons.home),
          ),
        ),
      ),
      // endDrawer: const Drawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 30,
                      top: 10,
                    ),
                    padding: const EdgeInsets.fromLTRB(
                      30,
                      0,
                      30,
                      0,
                    ),
                    width: screenSize.width,
                    height: 400,
                    child: Image.asset(
                      "images/elevatorbackground.jpg",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(70),
                    child: Text(
                      "Stawiamy na nowocześną i komfortową\n usługę serwisu wind od 2005 roku",
                      style: GoogleFonts.asar(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        backgroundColor: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
              const Subtitle(
                subtitle: "Nasze działania",
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BoxContainer(
                    text: "Serwisy",
                    text1: "images/elevator.png",
                  ),
                  BoxContainer(
                    text: "Dźwigi",
                    text1: "images/gear.png",
                  ),
                  BoxContainer(
                    text: "Technologia",
                    text1: "images/technology.png",
                  ),
                  BoxContainer(
                    text: "Cele",
                    text1: "images/plans.png",
                  ),
                  // BoxContainer(
                  //   icon: Icons.elevator,
                  //   text: "Serwisy",
                  // ),
                  // BoxContainer(
                  //   icon: Icons.elevator,
                  //   text: "Dźwigi",
                  // ),
                  // BoxContainer(
                  //   icon: Icons.elevator,
                  //   text: "Technologia",
                  // ),
                  // BoxContainer(
                  //   icon: Icons.elevator,
                  //   text: "Oferta",
                  // ),
                ],
              ),
              // Container(
              //   width: screenSize.width * 0.4,
              //   height: screenSize.height * 0.4,
              //   color: Colors.white,
              // ),
              const Subtitle(
                subtitle: "Aktualności",
              ),
              Container(
                width: screenSize.width * 0.4,
                height: screenSize.height * 0.4,
                color: Colors.white,
              ),
              const Subtitle(
                subtitle: "Nasi Klienci",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
