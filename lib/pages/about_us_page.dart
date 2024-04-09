import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/contact_container.dart';
import 'package:flutter_web_app/components/custom_page.dart';
import 'package:flutter_web_app/constants/fonts.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

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

  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          const CustomPage(
            subtitle: "O Firmie",
            imageText: "images/mapa.png",
            text:
                "\t Kompleksowa obsługa i bezpieczny \n serwis wind od 1999 roku",
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigatingPageButton(
                navigatingText: "Podstawy prawne",
                containerKey: _podstawyPrawneKey,
              ),
              NavigatingPageButton(
                navigatingText: "Zakres działalności",
                containerKey: _zakresDzialalnosciKey,
              ),
              NavigatingPageButton(
                  navigatingText: "Uprawnienia", containerKey: _uprawnieniaKey),
              NavigatingPageButton(
                navigatingText: "Kadra i jej kwalifikacje",
                containerKey: _kadraKey,
              ),
              NavigatingPageButton(
                navigatingText: "Zaplecze techniczne",
                containerKey: _zapleczeTechniczneKey,
              ),
            ],
          ),
          const Divider(),
          TextContainer(
            key: _podstawyPrawneKey,
            txt:
                "Firma ALTEL-GROUP to spółka z ograniczoną odpowiedzialnością, została utworzona z przekształecnia spółki  :,,ALTEL” s.c. Jacek Malinowski, Olgierd Uchnast działającej od 1998 roku.\n\nZakresem działalności spółki ALTEL-GROUP Sp. z o.o. są kompletacje, montaże, modernizacje, remonty, konserwacje dźwigów osobowych, szpitalnych towarowo-osobowych, towarowych, urządzeń do transportu osób niepełnosprawnych oraz burtowych podestów załadowczych (windy samochodowe – hydrauliczne), wózków widłowych, suwnic oraz żurawi i dźwigników.\n\nW okresie swojej działalności firma wymieniła bądź zmodernizowała ponad 240 urządzeń dźwigowych. Tylko w latach 2013-2018 roku wymieniono ponad 130 dźwigów na nowe.\n\nPracownicy posiadają uprawnienia wydane przez Urząd Dozoru Technicznego kat I i II do prowadzenia prac konserwacyjno - remontowych przy urządzeniach dźwigowych, uprawnienia SEP w zakresie eksploatacji i dozoru oraz uprawnienia do prowadzenia pomiarów ochronnych przy instalacjach elektrycznych.\n",
            subtitle: "Podstawy Prawne",
          ),
          TextContainer(
            key: _zakresDzialalnosciKey,
            subtitle: "Zakres działalności",
            txt:
                "Obszarem działalności Spółki ALTEL-GROUP SP. Z O.O. są usługi dźwigowe w zakresie:\n\t\t- kompletacji\n\t\t- wytwarzania w zakresie montażu\n\t\t- modernizacji\n\t\t- remontów\n\t\t- konserwacji\ndźwigów osobowych, szpitalnych, towarowo-osobowych, towarowych, urządzeń do transportu osób niepełnosprawnych oraz burtowych podestów załadowczych (windy samochodowe – hydrauliczne). ",
          ),
          TextContainer(
            key: _uprawnieniaKey,
            subtitle: "Uprawnienia",
            txt:
                "Firma ALTEL-GROUP SP. Z O.O. legitymuje się Uprawnieniami Dozoru Technicznego do dokonywania modernizacji dźwigów osobowych, towarowych, towarowych małych, urządzeń dla osób niepełnosprawnych nr: UD-05-29-P/3-15",
          ),
          TextContainer(
            key: _kadraKey,
            subtitle: "Kadra i jej kwalifikacje",
            txt:
                "ALTEL-GROUP SP. Z O.O. to zespół profesjonalistów o bogatych doświadczeniach w każdym aspekcie pracy nad dźwigiem, poczynając od konserwacji i modernizacji aż po montaż dźwigów.\n\nZatrudniani pracownicy to osoby zarówno wywodzące się z dawnego Zakładu Urządzeń Dźwigowych w Katowicach, którzy posiadają duży staż pracy przy urządzeniach dźwigowych jak i osoby, które zdobyły uprawnienia skierowane na egzamin przez nasz Zakład.\n\nZałoga ponadto uczestniczy w licznych szkoleniach w zakresie podnoszenia swoich kwalifikacji zawodowych.\n\nSpółka uzyskała wiele autoryzacji od czołowych na rynku producentów urządzeń dźwigowych.",
          ),
          TextContainer(
            key: _zapleczeTechniczneKey,
            subtitle: "Zaplecze Techniczne",
            txt:
                "Nasz zakład posiada zakupiony w 2017 r obiekt o powierzchni ponad 2000 mkw zlikoalizowany na działce 7000 mkw w Będzinie przy ulicy Małobądzkiej 143. Tutaj powstał nasz zakład produkujący i kompletujący nowe dźwigi, które powstają pod naszą marką „ALTEL-GROUP”.\n\nPonadto utworzyliśmy dla nas kompletnie wyposażoną bazę warsztatowo – magazynową,  w której dokonywane są bieżące naprawy i remonty poszczególnych podzespołów dźwigowych. Na terenie obiektu powstała hurtownia komponentów dźwigowych, dzięki której dysponujemy stałym dostępem do wielu części zamiennych oraz posiadamy własne środki transportu w postaci samochodów dostawczych i osobowych (łącznie 9sztuk).\n\nProwadząc konserwację zapewniamy całodobowe pogotowie dźwigowe realizujące zgłoszenia w dni robocze, soboty, niedziele i święta.",
          ),
          const ContactContainer()
        ],
      ),
    );
  }
}

class NavigatingPageButton extends StatefulWidget {
  const NavigatingPageButton({
    super.key,
    required this.containerKey,
    required this.navigatingText,
  });
  final GlobalKey containerKey;
  final String navigatingText;
  @override
  State<NavigatingPageButton> createState() => _NavigatingPageButtonState();
}

class _NavigatingPageButtonState extends State<NavigatingPageButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        scrollTo(widget.containerKey);
      },
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
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 100),
          // style: AGfonts.tabBarFont,
          style: isSelected ? AGfonts.navigatorHover : AGfonts.navigatorFont,
          // child: Container(
          //   color: Colors.white,
          //   padding: const EdgeInsets.only(top: 20, bottom: 20),
          //   margin: const EdgeInsets.only(
          //     left: 25,
          //     right: 25,
          //     bottom: 15,
          //     top: 15,
          //   ),
          //   child: Text(
          //     widget.navigatingText.toUpperCase(),
          //     style:
          //         isSelected ? AGfonts.navigatorHover : AGfonts.navigatorFont,
          //   ),
          // ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
              right: 20,
              left: 20,
            ),
            child: Text(
              widget.navigatingText.toUpperCase(),
              style:
                  isSelected ? AGfonts.navigatorHover : AGfonts.navigatorFont,
            ),
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

class TextContainer extends StatelessWidget {
  const TextContainer({
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
          SubSubTitle(subtitle: subtitle),
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

class SubSubTitle extends StatelessWidget {
  const SubSubTitle({
    super.key,
    required this.subtitle,
  });
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              subtitle.toUpperCase(),
              style: AGfonts.subsubtitleFont,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: const Color.fromARGB(255, 255, 222, 59),
              height: 7,
              width: 60,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
