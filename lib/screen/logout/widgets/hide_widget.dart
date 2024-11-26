// import 'package:flutter/material.dart';

// class HideWidgetDemo extends StatefulWidget {
//   const HideWidgetDemo({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _HideWidgetDemoState createState() => _HideWidgetDemoState();
// }

// class _HideWidgetDemoState extends State<HideWidgetDemo> {
//   bool isVisible = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Hide Widget Demo"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Visibility(
//             visible: isVisible,
//             child: const Text(
//               "Visibility Widget",
//               style: TextStyle(fontSize: 24, color: Colors.blue),
//             ),
//           ),
//           const SizedBox(height: 20),
//           Opacity(
//             opacity: isVisible ? 1.0 : 0.0,
//             child: const Text(
//               "Opacity Widget",
//               style: TextStyle(fontSize: 24, color: Colors.green),
//             ),
//           ),
//           const SizedBox(height: 20),
//           isVisible
//               ? const Text(
//                   "Conditional Widget",
//                   style: TextStyle(fontSize: 24, color: Colors.red),
//                 )
//               : const SizedBox.shrink(),
//           const SizedBox(height: 40),
//           ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 isVisible = !isVisible;
//               });
//             },
//             child: Text(isVisible ? "Hide Widgets" : "Show Widgets"),
//           ),
//         ],
//       ),
//     );
//   }
// }
