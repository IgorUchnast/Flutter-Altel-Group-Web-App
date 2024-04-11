import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AutoScrollingListView extends StatefulWidget {
  const AutoScrollingListView({
    super.key,
    required this.controller,
    required this.numberOfItems,
    required this.imageList,
    required this.imageNames,
    this.q = 1,
    required this.containerKey,
    // Dodanie nowego parametru q z wartością domyślną 1
  });
  final ScrollController controller;
  final int numberOfItems;
  final List<String> imageList;
  final List<String> imageNames;
  final int q; // Liczba elementów do przesunięcia za każdym razem
  final GlobalKey containerKey;

  @override
  // ignore: library_private_types_in_public_api
  _AutoScrollingListViewState createState() => _AutoScrollingListViewState();
}

class _AutoScrollingListViewState extends State<AutoScrollingListView> {
  Timer? _timer;
  final double itemWidth =
      300.0; // Szerokość jednego elementu ContainerNavigator
  final double itemMargin =
      20.0; // Suma lewego i prawego marginesu dla jednego elementu

  @override
  void initState() {
    super.initState();

    // Uruchomienie timera, który przesuwa listę co 4 sekundy
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (widget.controller.hasClients) {
        // Obliczanie nowej pozycji w oparciu o szerokość i margines elementu
        double newPosition = widget.controller.offset + itemWidth + itemMargin;
        // Sprawdzanie, czy nowa pozycja nie przekracza maksymalnego zakresu przewijania
        if (newPosition > widget.controller.position.maxScrollExtent) {
          // Możesz zdecydować, co zrobić, gdy osiągnięty zostanie koniec listy, np. zacząć od początku
          newPosition = 0; // Wróć na początek listy
        }
        widget.controller.animateTo(
          newPosition,
          duration: const Duration(milliseconds: 350),
          curve: Curves.linear,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 315,
      child: ListView.builder(
        controller: widget.controller,
        scrollDirection: Axis.horizontal,
        itemCount: widget.numberOfItems,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ContainerNavigator(
            imageList: widget.imageList,
            imageNames: widget.imageNames,
            index: index,
            containerKey: widget.containerKey,
          );
        },
      ),
    );
  }
}

class ContainerNavigator extends StatefulWidget {
  const ContainerNavigator({
    super.key,
    required this.imageList,
    required this.index,
    required this.imageNames,
    required this.containerKey,
  });
  final List<String> imageList;
  final List<String> imageNames;
  final GlobalKey containerKey;
  final int index;
  @override
  State<ContainerNavigator> createState() => ContainerNavigatorState();
}

class ContainerNavigatorState extends State<ContainerNavigator> {
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
        child: Container(
          width: 300.0,
          height: 500,
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
            bottom: 20,
            top: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            // color: Colors.black.withOpacity(0.02),
            border: Border.all(
              color: isSelected
                  ? const Color.fromARGB(255, 47, 47, 47)
                  : const Color.fromARGB(255, 47, 47, 47),
              width: 1,
            ),
          ),
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: 200,
                width: double.maxFinite,
                child: Image.asset(
                  widget.imageList[widget.index].toUpperCase(),
                  fit: BoxFit.contain,
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 2,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          widget.imageNames[widget.index],
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
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
