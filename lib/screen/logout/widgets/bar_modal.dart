// import 'package:flutter/material.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

// class YourScreen extends StatelessWidget {
//   const YourScreen({super.key});

//   void _showCustomBottomSheet(BuildContext context) {
//     showMaterialModalBottomSheet(
//       context: context,
//       expand: false,
//       backgroundColor: Colors.transparent,
//       builder: (BuildContext context) {
//         return CustomBottomSheetContent(
//           confirmText: 'Yes',
//           cancelText: 'No',
//           onConfirm: () {
//             Navigator.of(context).pop();
//           },
//           onCancel: () {
//             Navigator.of(context).pop();
//           },
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Your Screen')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => _showCustomBottomSheet(context),
//           child: const Text('Show Custom Bottom Sheet'),
//         ),
//       ),
//     );
//   }
// }

// class CustomBottomSheetContent extends StatelessWidget {
//   final String confirmText;
//   final String cancelText;
//   final VoidCallback onConfirm;
//   final VoidCallback onCancel;

//   const CustomBottomSheetContent({
//     super.key,
//     this.confirmText = 'Confirm',
//     this.cancelText = 'Cancel',
//     required this.onConfirm,
//     required this.onCancel,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.topCenter,
//       clipBehavior: Clip.none,
//       children: [
//         Positioned(
//           top: -15,
//           child: Container(
//             width: 40,
//             height: 5,
//             decoration: BoxDecoration(
//               color: Colors.grey[300],
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//         ),
//         // Main content container
//         Container(
//           margin: const EdgeInsets.symmetric(horizontal: 5),
//           height: 400,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(30),
//             color: Colors.white,
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 const Center(
//                   child: Text(
//                     'Confirmation',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 const Text(
//                   'Are you sure you want to proceed?',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 const Spacer(),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     TextButton(
//                       onPressed: onCancel,
//                       child: Text(cancelText),
//                     ),
//                     ElevatedButton(
//                       onPressed: onConfirm,
//                       child: Text(confirmText),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
