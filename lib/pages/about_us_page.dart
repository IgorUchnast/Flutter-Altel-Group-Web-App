import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/contact_container.dart';
import 'package:flutter_web_app/components/custom_page.dart';
import 'package:flutter_web_app/components/subtitle.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        const CustomPage(
          subtitle: "O Firmie",
          imageText: "images/im4.jpeg",
          text:
              "\t Kompleksowa obsługa i bezpieczny \n serwis wind od 1999 roku",
        ),
        Container(
          height: 600,
          width: screenSize.width * 0.5,
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Firma ALTEL-GROUP to spółka z ograniczoną odpowiedzialnością, została utworzona z przekształecnia spółki  :,,ALTEL” s.c. Jacek Malinowski, Olgierd Uchnast działającej od 1998 roku.\n",
                style: GoogleFonts.asar(
                  color: const Color.fromARGB(255, 48, 48, 48),
                  fontSize: 20,
                ),
                softWrap: true,
              ),
              Text(
                "Zakresem działalności spółki ALTEL-GROUP Sp. z o.o. są kompletacje, montaże, modernizacje, remonty, konserwacje dźwigów osobowych, szpitalnych towarowo-osobowych, towarowych, urządzeń do transportu osób niepełnosprawnych oraz burtowych podestów załadowczych (windy samochodowe – hydrauliczne), wózków widłowych, suwnic oraz żurawi i dźwigników.\n",
                style: GoogleFonts.asar(
                  color: const Color.fromARGB(255, 48, 48, 48),
                  fontSize: 20,
                ),
                softWrap: true,
              ),
              Text(
                "W okresie swojej działalności firma wymieniła bądź zmodernizowała ponad 240 urządzeń dźwigowych. Tylko w latach 2013-2018 roku wymieniono ponad 130 dźwigów na nowe.\n",
                style: GoogleFonts.asar(
                  color: const Color.fromARGB(255, 48, 48, 48),
                  fontSize: 20,
                ),
                softWrap: true,
              ),
              Text(
                "Pracownicy posiadają uprawnienia wydane przez Urząd Dozoru Technicznego kat I i II do prowadzenia prac konserwacyjno - remontowych przy urządzeniach dźwigowych, uprawnienia SEP w zakresie eksploatacji i dozoru oraz uprawnienia do prowadzenia pomiarów ochronnych przy instalacjach elektrycznych.\n",
                style: GoogleFonts.asar(
                  color: const Color.fromARGB(255, 48, 48, 48),
                  fontSize: 20,
                ),
                softWrap: true,
              ),
            ],
          ),
        ),
        const Subtitle(subtitle: "Zakres działalności"),
        Container(
          height: 400,
          width: screenSize.width * 0.5,
          alignment: Alignment.centerLeft,
          child: Text(
            "Obszarem działalności Spółki ALTEL-GROUP SP. Z O.O. są usługi dźwigowe w zakresie:\n\t\t- kompletacji\n\t\t- wytwarzania w zakresie montażu\n\t\t- modernizacji\n\t\t- remontów\n\t\t- konserwacji\ndźwigów osobowych, szpitalnych, towarowo-osobowych, towarowych, urządzeń do transportu osób niepełnosprawnych oraz burtowych podestów załadowczych (windy samochodowe – hydrauliczne). ",
            style: GoogleFonts.asar(
              color: const Color.fromARGB(255, 48, 48, 48),
              fontSize: 20,
            ),
            softWrap: true,
          ),
        ),
        const Subtitle(subtitle: "Uprawnienia"),
        Container(
          height: 200,
          width: screenSize.width * 0.5,
          alignment: Alignment.centerLeft,
          child: Text(
            "Firma ALTEL-GROUP SP. Z O.O. legitymuje się Uprawnieniami Dozoru Technicznego do dokonywania modernizacji dźwigów osobowych, towarowych, towarowych małych, urządzeń dla osób niepełnosprawnych nr: UD-05-29-P/3-15",
            style: GoogleFonts.asar(
              color: const Color.fromARGB(255, 48, 48, 48),
              fontSize: 20,
            ),
            softWrap: true,
          ),
        ),
        const Subtitle(subtitle: "Kadra i jej kwalifikacje"),
        Container(
          height: 300,
          width: screenSize.width * 0.5,
          alignment: Alignment.centerLeft,
          child: Text(
            "ALTEL-GROUP SP. Z O.O. to zespół profesjonalistów o bogatych doświadczeniach w każdym aspekcie pracy nad dźwigiem, poczynając od konserwacji i modernizacji aż po montaż dźwigów.\n\nZatrudniani pracownicy to osoby zarówno wywodzące się z dawnego Zakładu Urządzeń Dźwigowych w Katowicach, którzy posiadają duży staż pracy przy urządzeniach dźwigowych jak i osoby, które zdobyły uprawnienia skierowane na egzamin przez nasz Zakład.\n\nZałoga ponadto uczestniczy w licznych szkoleniach w zakresie podnoszenia swoich kwalifikacji zawodowych.\n\nSpółka uzyskała wiele autoryzacji od czołowych na rynku producentów urządzeń dźwigowych.",
            style: GoogleFonts.asar(
              color: const Color.fromARGB(255, 48, 48, 48),
              fontSize: 20,
            ),
            softWrap: true,
          ),
        ),
        const Subtitle(subtitle: "Zaplecze Techniczne"),
        Container(
          height: 500,
          width: screenSize.width * 0.5,
          alignment: Alignment.centerLeft,
          child: Text(
            "Nasz zakład posiada zakupiony w 2017 r obiekt o powierzchni ponad 2000 mkw zlikoalizowany na działce 7000 mkw w Będzinie przy ulicy Małobądzkiej 143. Tutaj powstał nasz zakład produkujący i kompletujący nowe dźwigi, które powstają pod naszą marką „ALTEL-GROUP”.\n\nPonadto utworzyliśmy dla nas kompletnie wyposażoną bazę warsztatowo – magazynową,  w której dokonywane są bieżące naprawy i remonty poszczególnych podzespołów dźwigowych. Na terenie obiektu powstała hurtownia komponentów dźwigowych, dzięki której dysponujemy stałym dostępem do wielu części zamiennych oraz posiadamy własne środki transportu w postaci samochodów dostawczych i osobowych (łącznie 9sztuk).\n\nProwadząc konserwację zapewniamy całodobowe pogotowie dźwigowe realizujące zgłoszenia w dni robocze, soboty, niedziele i święta.",
            style: GoogleFonts.asar(
              color: const Color.fromARGB(255, 48, 48, 48),
              fontSize: 20,
            ),
            softWrap: true,
          ),
        ),
        const ContactContainer()
      ],
    );
  }
}
