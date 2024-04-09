import 'package:flutter/material.dart';
// import 'package:flutter_web_app/constants/fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class AltelContainer extends StatefulWidget {
  const AltelContainer({super.key});

  @override
  State<AltelContainer> createState() => _AltelContainerState();
}

class _AltelContainerState extends State<AltelContainer> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    return Image.asset(
      "images/logo1.png",
      scale: 2,
    );
  }
}
// class AltelContainer extends StatefulWidget {
//   const AltelContainer({super.key});

//   @override
//   State<AltelContainer> createState() => _AltelContainerState();
// }

// class _AltelContainerState extends State<AltelContainer> {
//   bool isSelected = false;
//   @override
//   Widget build(BuildContext context) {
//     // Size screenSize = MediaQuery.of(context).size;
//     return MouseRegion(
//       onEnter: (_) {
//         setState(() {
//           isSelected = true;
//         });
//       },
//       onExit: (_) {
//         setState(() {
//           isSelected = false;
//         });
//       },
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 100),
//         // child: Container(
//         //   alignment: Alignment.center,
//         //   padding: const EdgeInsets.all(10),
//         //   // width: 150,
//         //   width: isSelected ? 410 : 400,
//         //   // height: 120,
//         //   height: isSelected ? 100 : 90,
//         //   decoration: BoxDecoration(
//         //     color: Colors.white,
//         //     borderRadius: BorderRadius.circular(15),
//         //     border: Border.all(
//         //       color: Colors.white,
//         //       // color: isSelected ? Colors.blue : Colors.black,
//         //       width: 2,
//         //     ),
//         //     boxShadow: [
//         //       BoxShadow(
//         //         color: isSelected
//         //             ? Colors.orange.withOpacity(0.2)
//         //             : Colors.white.withOpacity(0.2),
//         //         spreadRadius: 5,
//         //         blurRadius: 7, // How much the shadow is blurred
//         //         offset: const Offset(0, 3), // Changes position of shadow
//         //       ),
//         //     ],
//         //   ),
//         child: Padding(
//           padding: const EdgeInsets.only(right: 100, left: 40),
//           child: Image.asset(
//             "images/logo1.png",
//             scale: 2,
//           ),
//         ),
//       ),
//       // ),
//     );
//   }
// }
