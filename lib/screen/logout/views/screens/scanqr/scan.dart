// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// class QRScanScreen extends StatefulWidget {
//   const QRScanScreen({super.key});

//   @override
//   State<StatefulWidget> createState() => _QRScanScreenState();
// }

// class _QRScanScreenState extends State<QRScanScreen> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   Barcode? result;
//   QRViewController? controller;

//   @override
//   void reassemble() {
//     super.reassemble();
//     if (controller != null) {
//       controller!.pauseCamera();
//       controller!.resumeCamera();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         iconTheme: IconThemeData(
//           color: Colors.white,
//         ),
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(
//             Icons.cancel_sharp,
//             size: 30,
//           ),
//         ),
//         backgroundColor: Colors.black,
//         title: const Text(
//           'QR Scan',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: Stack(
//         alignment: Alignment.center,
//         children: <Widget>[
//           _buildQrView(context),
//           Positioned(
//             top: 30,
//             child: Column(
//               children: const [
//                 Text(
//                   "Accepted Payments",
//                   style: TextStyle(color: Colors.white, fontSize: 18),
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [],
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: 120,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(
//                   icon: const Icon(Icons.flashlight_on, color: Colors.white),
//                   onPressed: () async {
//                     await controller?.toggleFlash();
//                   },
//                 ),
//                 const SizedBox(width: 20),
//                 IconButton(
//                   icon: const Icon(Icons.image, color: Colors.white),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: 50,
//             child: ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.white,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//               ),
//               child: const Text(
//                 "ENTER MERCHANT ID MANUALLY",
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildQrView(BuildContext context) {
//     return QRView(
//       key: qrKey,
//       onQRViewCreated: _onQRViewCreated,
//       overlay: QrScannerOverlayShape(
//         borderColor: Colors.blue,
//         borderRadius: 10,
//         borderLength: 30,
//         borderWidth: 10,
//         cutOutSize: MediaQuery.of(context).size.width * 0.7,
//       ),
//     );
//   }

//   void _onQRViewCreated(QRViewController controller) {
//     setState(() {
//       this.controller = controller;
//     });
//     controller.scannedDataStream.listen((scanData) {
//       setState(() {
//         result = scanData;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }
