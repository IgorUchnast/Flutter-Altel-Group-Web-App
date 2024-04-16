import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/appbar_widgets/tab_bar.dart';
import 'package:flutter_web_app/components/appbar_widgets/title_sliding_container.dart';
// import 'package:flutter_web_app/components/appbar_widgets/title_sliding_container.dart';
import 'package:flutter_web_app/constants/txt_files/appbar_txt.dart';
import 'package:google_fonts/google_fonts.dart';

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
            height: 2.0,
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
                ? SlidingContainer(
                    titleList: const [
                      "Strona Główna",
                      "O firmie",
                      "Oferta",
                      "Kariera",
                      "Kontakt",
                    ],
                    isSelected: isSelected,
                    numberOfItemsList: const [2, 5, 5, 3, 2],
                    txtList: const [
                      AGAppbarTexts.homePageText,
                      AGAppbarTexts.aboutUs,
                      AGAppbarTexts.offerText,
                      AGAppbarTexts.carrierText,
                      AGAppbarTexts.contactText,
                    ],
                  )
                : Container(height: 0.0),
          ),
        ],
      ),
    );
  }
}

// *********************************************************************************************************************

class SlidingContainer extends StatefulWidget {
  const SlidingContainer({
    super.key,
    required this.txtList,
    required this.numberOfItemsList,
    required this.isSelected,
    required this.titleList,
  });
  final List<List<String>> txtList;
  final List<int> numberOfItemsList;
  final List<String> titleList;
  final bool isSelected;
  @override
  State<SlidingContainer> createState() => _SlidingContainerState();
}

class _SlidingContainerState extends State<SlidingContainer> {
  int? hoveredIndex = 0;
  int subtitleIndex = 0;
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(
        right: 30,
        left: 30,
      ),
      // color: Colors.white,
      height: 270,
      width: screenSize.width * 0.45,
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(2, 2),
            blurRadius: 8.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            color: Colors.white.withOpacity(0.9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.titleList.length,
                (index) {
                  return TitleSlidingContainer(
                    pageIndex: index,
                    routeName: const [
                      "/",
                      "/o-firmie",
                      "/oferta",
                      "/kariera",
                      "/kontakt",
                    ],
                    key: ValueKey(index),
                    numberOfItems: widget.numberOfItemsList[index],
                    txtList: widget.txtList[index],
                    isSelected: hoveredIndex == index,
                    title: widget.titleList[index],
                    onHover: (isHovering) {
                      setState(() {
                        if (isHovering) {
                          hoveredIndex = index;
                          subtitleIndex = index;
                        } else if (hoveredIndex == index) {
                          hoveredIndex = null;
                        }
                      });
                    },
                  );
                },
              ),
            ),
          ),
          SubTitleSlidingContainer(
            containerKey: const [],
            pageIndex: subtitleIndex,
            routeName: const [
              "/",
              "/o-firmie",
              "/oferta",
              "/kariera",
              "/kontakt",
            ],
            numberOfItems: widget.numberOfItemsList[subtitleIndex],
            txtList: widget.txtList[subtitleIndex],
            isSelected: isHovered,
          ),
        ],
      ),
    );
  }
}

// *********************************************************************************************************************
class SubTitleSlidingContainer extends StatefulWidget {
  const SubTitleSlidingContainer({
    super.key,
    required this.numberOfItems,
    required this.txtList,
    required this.isSelected,
    required this.routeName,
    required this.pageIndex,
    required this.containerKey,
  });
  final List<String> txtList;
  final int numberOfItems;
  final bool isSelected;
  final List<String> routeName;
  final int pageIndex;
  final List<GlobalKey> containerKey;
  @override
  State<SubTitleSlidingContainer> createState() =>
      _SubTitleSlidingContainerState();
}

class _SubTitleSlidingContainerState extends State<SubTitleSlidingContainer> {
  // bool isSelected = false;
  int? hoveredIndex;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.3,
      padding: const EdgeInsets.only(
        top: 10,
        left: 30,
      ),
      height: 233,
      color: Colors.white,
      child: Expanded(
        child: Container(
          height: 40,
          // color: Colors.red,
          alignment: Alignment.centerLeft,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: widget.numberOfItems,
            itemBuilder: (context, index) {
              bool isCurrentItemHovered = hoveredIndex == index;
              return Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  bottom: 0,
                  right: 10,
                  top: 11,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      widget.routeName[widget.pageIndex],
                    );
                    scrollTo(widget.containerKey[index]);
                  },
                  child: MouseRegion(
                    onEnter: (_) => setState(() {
                      hoveredIndex = index;
                    }),
                    onExit: (_) => setState(() {
                      hoveredIndex = null;
                    }),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: isCurrentItemHovered
                              ? Colors.amber
                              : Colors.black,
                        ),
                        Text(
                          widget.txtList[index].toUpperCase(),
                          softWrap: true,
                          style: GoogleFonts.roboto(
                            color: isCurrentItemHovered
                                ? Colors.amber
                                : Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }
}
// *********************************************************************************************************************