import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/auto_scroll_bar.dart';
import 'package:flutter_web_app/components/contact_container.dart';
import 'package:flutter_web_app/components/custom_page.dart';
import 'package:flutter_web_app/components/navigate_button.dart';
import 'package:flutter_web_app/components/subsubtitle.dart';
import 'package:flutter_web_app/components/txt_container.dart';
import 'package:flutter_web_app/constants/fonts.dart';
import 'package:flutter_web_app/constants/txt_files/offerta_txt.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  final ScrollController _scrollController = ScrollController();
  final ScrollController _scrollController1 = ScrollController();
  final GlobalKey _cranesKey = GlobalKey();
  final GlobalKey _uslugiKey = GlobalKey();
  final GlobalKey _serwisy = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          const TopImageContainer(
            // imageText: "images/new2.jpg",
            imageText: "images/offerimage2.jpg",
            text: "\tInnowacyjne rozwiązania \n dla przemysłu ",
          ),
          const CustomPage(
            subtitle: "Oferta",
            imageText: "images/offerimage.jpg",
            text: "\tInnowacyjne rozwiązania \n dla przemysłu ",
          ),
          // const Divider(),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigatingPageButton(
                navigatingText: AGOfferTexts.cranesText[0],
                containerKey: _cranesKey,
              ),
              NavigatingPageButton(
                navigatingText: AGOfferTexts.uslugiText[0],
                containerKey: _uslugiKey,
              ),
              NavigatingPageButton(
                navigatingText: AGOfferTexts.serwisyText[0],
                containerKey: _uslugiKey,
              ),
              NavigatingPageButton(
                navigatingText: AGOfferTexts.technologyText[0],
                containerKey: _uslugiKey,
              ),
              NavigatingPageButton(
                navigatingText: AGOfferTexts.coursesText[0],
                containerKey: _uslugiKey,
              ),
            ],
          ),
          const Divider(),
          Container(
            key: _cranesKey,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.05),
              border: Border.all(
                color: Colors.black.withOpacity(0.01),
                width: 2,
              ),
            ),
            padding: const EdgeInsets.all(40),
            margin: EdgeInsets.fromLTRB(
              screenSize.width * 0.23,
              40,
              screenSize.width * 0.23,
              40,
            ),
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SubSubTitle(subsubtitle: "Dźwigi"),
                const Divider(),
                AutoScrollingListView(
                  containerKey: _cranesKey,
                  imageNames: const [
                    "WÓZKI WIDŁOWE",
                    "STEROWANIE DŹWIGÓW",
                    "PLATFORMY DLA\n OSÓB NIEPEŁNOSPRAWNYCH",
                    "DŹWIGI HYBRYDOWE",
                    "DŹWIGI ELEKTRYCZNE",
                    "DŹWIGI TOWAROWE",
                    "SUWNICE",
                  ],
                  imageList: const [
                    "images/wozek3.png",
                    "images/suwnica3.png",
                    "images/willchair.jpg",
                    "images/suwnica3.png",
                    "images/suwnica3.png",
                    "images/suwnica3.png",
                    "images/suwnica3.png",
                  ],
                  controller: _scrollController1,
                  numberOfItems: 7,
                ),
                // const Divider(),
                // const SubSubTitle(subsubtitle: "Usługi"),
                // const Divider(),
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     SubSubTitle(subsubtitle: "Modernizacja Dźwigów"),
                //     SubSubTitle(subsubtitle: "Serwisy Dźwigów"),
                //   ],
                // ),
              ],
            ),
          ),
          // TextContainer(
          //   key: _cranesKey,
          //   subtitle: AGOfferTexts.cranesText[0],
          //   txt: AGOfferTexts.cranesText[1],
          // ),
          TextContainer(
            key: _uslugiKey,
            subtitle: AGOfferTexts.uslugiText[0],
            txt: AGOfferTexts.uslugiText[1],
          ),
          TextContainer(
            key: _serwisy,
            subtitle: AGOfferTexts.serwisyText[0],
            txt: AGOfferTexts.serwisyText[1],
          ),
          const ContactContainer(),
        ],
      ),
    );
  }
}

class TextImageContainer extends StatelessWidget {
  const TextImageContainer({
    super.key,
    required this.txt,
    required this.subtitle,
  });
  final String txt;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.05),
        border: Border.all(
          color: Colors.black.withOpacity(0.01),
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(40),
      margin: EdgeInsets.fromLTRB(
        screenSize.width * 0.23,
        40,
        screenSize.width * 0.23,
        40,
      ),
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SubSubTitle(subsubtitle: subtitle),
          const Divider(
            color: Colors.black,
          ),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              txt,
              style: AGfonts.textFont,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
