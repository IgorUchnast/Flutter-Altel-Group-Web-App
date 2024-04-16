import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/contact_container.dart';
import 'package:flutter_web_app/components/custom_page.dart';
import 'package:flutter_web_app/components/navigate_button.dart';
import 'package:flutter_web_app/components/txt_container.dart';
import 'package:flutter_web_app/constants/txt_files/o_firmie_txt.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({
    super.key,
    // required this.pageElementKey,
  });
  // final GlobalKey pageElementKey;
  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  final ScrollController _scrollController = ScrollController();

  // GlobalKey dla każdego TextContainera
  final GlobalKey _podstawyPrawneKey = GlobalKey();
  final GlobalKey _zakresDzialalnosciKey = GlobalKey();
  final GlobalKey _uprawnieniaKey = GlobalKey();
  final GlobalKey _kadraKey = GlobalKey();
  final GlobalKey _zapleczeTechniczneKey = GlobalKey();
  final GlobalKey _mainPage = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          const TopImageContainer(
            imageText: "images/new2.jpg",
            text:
                "\t Kompleksowa obsługa i bezpieczny \n serwis wind od 1999 roku",
          ),
          const CustomPage(
            subtitle: "O Firmie",
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          Row(
            key: _mainPage,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigatingPageButton(
                navigatingText: AGAbouUsTexts.podstawyPrawneTxt[0],
                containerKey: _podstawyPrawneKey,
              ),
              NavigatingPageButton(
                navigatingText: AGAbouUsTexts.zakresDzialalnosciTxt[0],
                containerKey: _zakresDzialalnosciKey,
              ),
              NavigatingPageButton(
                navigatingText: AGAbouUsTexts.uprawnieniaTxt[0],
                containerKey: _uprawnieniaKey,
              ),
              NavigatingPageButton(
                navigatingText: AGAbouUsTexts.kadraKwalifikacjeTxt[0],
                containerKey: _kadraKey,
              ),
              NavigatingPageButton(
                navigatingText: AGAbouUsTexts.zapleczeTechniczneTxt[0],
                containerKey: _zapleczeTechniczneKey,
              ),
            ],
          ),
          const Divider(),
          TextContainer(
            key: _podstawyPrawneKey,
            subtitle: AGAbouUsTexts.podstawyPrawneTxt[0],
            txt: AGAbouUsTexts.podstawyPrawneTxt[1],
          ),
          TextContainer(
            key: _zakresDzialalnosciKey,
            subtitle: AGAbouUsTexts.zakresDzialalnosciTxt[0],
            txt: AGAbouUsTexts.zakresDzialalnosciTxt[1],
          ),
          TextContainer(
            key: _uprawnieniaKey,
            subtitle: AGAbouUsTexts.uprawnieniaTxt[0],
            txt: AGAbouUsTexts.uprawnieniaTxt[1],
          ),
          TextContainer(
            key: _kadraKey,
            subtitle: AGAbouUsTexts.kadraKwalifikacjeTxt[0],
            txt: AGAbouUsTexts.kadraKwalifikacjeTxt[1],
          ),
          TextContainer(
            key: _zapleczeTechniczneKey,
            subtitle: AGAbouUsTexts.zapleczeTechniczneTxt[0],
            txt: AGAbouUsTexts.zapleczeTechniczneTxt[1],
          ),
          const ContactContainer()
        ],
      ),
    );
  }
}
