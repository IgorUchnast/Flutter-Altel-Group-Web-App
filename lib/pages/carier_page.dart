import 'package:flutter/material.dart';
import 'package:flutter_web_app/components/contact_container.dart';
import 'package:flutter_web_app/components/custom_page.dart';
import 'package:flutter_web_app/components/navigate_button.dart';
import 'package:flutter_web_app/components/txt_container.dart';
import 'package:flutter_web_app/constants/fonts.dart';
import 'package:flutter_web_app/constants/txt_files/carrier_txt.dart';

class CarrierPage extends StatefulWidget {
  const CarrierPage({super.key});

  @override
  State<CarrierPage> createState() => _CarrierPageState();
}

class _CarrierPageState extends State<CarrierPage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _whatWeOffer = GlobalKey();
  final GlobalKey _jobOffer = GlobalKey();
  final GlobalKey _cvInformation = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          // const TopImageContainer(
          //   imageText: "images/new2.jpg",
          //   text: "\tInnowacyjne rozwiązania \n dla przemysłu ",
          // ),
          const CustomPage(
            subtitle: "Kariera",
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
            child: SizedBox(
              width: screenSize.width * 0.55,
              child: Text(
                AGCarrierText.carrierText[1],
                style: AGfonts.mainTextFont,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigatingPageButton(
                navigatingText: AGCarrierText.carrierText[2],
                containerKey: _whatWeOffer,
              ),
              NavigatingPageButton(
                navigatingText: AGCarrierText.carrierText[4],
                containerKey: _jobOffer,
              ),
              NavigatingPageButton(
                navigatingText: AGCarrierText.carrierText[6],
                containerKey: _cvInformation,
              ),
            ],
          ),
          const Divider(),
          TextContainer(
            key: _whatWeOffer,
            subtitle: AGCarrierText.carrierText[2],
            txt: AGCarrierText.carrierText[3],
          ),
          TextContainer(
            key: _jobOffer,
            subtitle: AGCarrierText.carrierText[4],
            txt: AGCarrierText.carrierText[5],
          ),
          TextContainer(
            key: _cvInformation,
            subtitle: AGCarrierText.carrierText[6],
            txt: AGCarrierText.carrierText[7],
          ),
          const ContactContainer(),
        ],
      ),
    );
  }
}
