// import 'package:flutter/material.dart';
//
// class boxformat extends StatelessWidget {
//   final String name;
//   final String image;
//   final String id;
//   const boxformat({super.key, required this.name, required this.image, required this.id});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: InkWell(
//         onTap:(){
//           Navigator.pushNamed(context,"carscreen",arguments:{
//             "id":id,
//             "name":name,
//           });
//         },
//         child: ClipRRect(borderRadius: BorderRadius.circular(15),
//           child: Stack(alignment: Alignment.bottomCenter,
//             children:[
//               Container(width: double.infinity,height: 200,
//                 decoration: BoxDecoration(image: DecorationImage(
//                     fit: BoxFit.fill,
//                     image: AssetImage(image)
//                 ),
//                   // color: Colors.cyan
//                 ),
//               ),
//             ] ,
//           ),
//         ),
//       ),
//     );
//   }
// }
