import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/tab_bar.dart';

class StartingPageWeb extends StatefulWidget {
  const StartingPageWeb({
    super.key,
    required this.page,
  });
  final Widget page;

  @override
  State<StartingPageWeb> createState() => _StartingPageWebState();
}

class _StartingPageWebState extends State<StartingPageWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        shadowColor: Colors.black.withOpacity(0.5),
        backgroundColor: Colors.white,
        elevation: 100,
        iconTheme: const IconThemeData(
          size: 25,
          color: Colors.black,
        ),
        title: Padding(
          padding: EdgeInsets.only(
            left: 100,
            right: screenSize.width * 0.01,
          ),
          child: MouseRegion(
            onEnter: (_) {
              setState(() {
                isSelected = true;
                print("DUPA");
              });
            },
            onExit: (_) {
              setState(
                () {
                  isSelected = false;
                },
              );
            },
            child: const TopNaviagtionBar(
              barItem: [
                "O FIRMIE",
                "OFERTA",
                "KARIERA",
                "KONTAKT",
              ],
              barIcon: Icon(Icons.home),
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(10, 1),
          child: Container(
            color: Colors.black,
            height: 4.0,
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: widget.page,
            ),
          ),
          MouseRegion(
            onEnter: (_) {
              setState(() {
                isSelected = true;
              });
            },
            onExit: (_) {
              setState(
                () {
                  isSelected = false;
                },
              );
            },
            child: isSelected
                ? Container(
                    // color: Colors.black,
                    padding: const EdgeInsets.only(
                      right: 30,
                      left: 30,
                    ),
                    // margin: const EdgeInsets.only(top: 20),
                    color: Colors.white,
                    height: 270,
                    width: screenSize.width * 0.7,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.black,
                          height: 0.2,
                        ),
                        const MovingContainerAppBar(
                          // isSelected: isSelected,
                          title: "Strona Główna",
                          numberOfItems: 2,
                          txtList: ["Nasze działania", "Aktualności"],
                        ),
                        const MovingContainerAppBar(
                          // isSelected: isSelected,
                          numberOfItems: 5,
                          title: "O Firmie",
                          txtList: [
                            "Podstawy prawne",
                            "Zakres działalności",
                            "Uprawnienia",
                            "Kadra i jej kwalifikacje",
                            "Zaplecze Techniczne",
                          ],
                        ),
                        const MovingContainerAppBar(
                          // isSelected: isSelected,
                          title: "Oferta",
                          numberOfItems: 5,
                          txtList: [
                            "Dźwig",
                            "Usługi",
                            "Serwisy",
                            "Technologia",
                            "Szkolenia",
                          ],
                        ),
                        const MovingContainerAppBar(
                          // isSelected: isSelected,
                          title: "Kariera",
                          numberOfItems: 3,
                          txtList: [
                            "Co Oferujemy?",
                            "Aktualne Oferty Pracy",
                            "Nie Znalazłeś Odpowiedniej Oferty?",
                          ],
                        ),
                        const MovingContainerAppBar(
                          // isSelected: isSelected,
                          title: "Kontakt",
                          numberOfItems: 2,
                          txtList: ["Siedziba", "Formularz kontaktowy"],
                        ),
                      ],
                    ),
                  )
                : Container(
                    height: 0.0,
                  ),
          ),
        ],
      ),
    );
  }
}

class MovingContainerAppBar extends StatefulWidget {
  const MovingContainerAppBar({
    super.key,
    required this.title,
    required this.txtList,
    required this.numberOfItems,
    // required this.isSelected,
  });
  final String title;
  final List<String> txtList;
  final int numberOfItems;
  // bool isSelected;

  @override
  State<MovingContainerAppBar> createState() => _MovingContainerAppBarState();
}

class _MovingContainerAppBarState extends State<MovingContainerAppBar> {
  bool isSelected = false;
  // bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  isSelected = true;
                });
              },
              onExit: (_) {
                setState(
                  () {
                    isSelected = false;
                  },
                );
              },
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                  color: isSelected ? Colors.black : Colors.white,
                  border: const Border(
                    right: BorderSide(
                      color: Colors.black,
                      width: 0.2,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    widget.title.toUpperCase(),
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 40,
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.numberOfItems,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        bottom: 0,
                        right: 10,
                        top: 11,
                      ),
                      child: Text(
                        widget.txtList[index].toUpperCase(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Container(
          color: Colors.black,
          height: 0.2,
        ),
      ],
    );
  }
}
