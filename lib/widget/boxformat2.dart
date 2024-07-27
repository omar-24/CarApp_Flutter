import 'package:flutter/material.dart';

class boxformat2 extends StatelessWidget {
  final String name;
  final String image;
  final String id;
  final String price;
  final String model;
  final String color;
  final String transmission;

  const boxformat2({super.key, required this.name, required this.image, required this.id, required this.price, required this.model, required this.color, required this.transmission});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.pushNamed(context,"detailscreen",arguments:{
          "id":id,
          "name":name,
          "image":image,
          "price":price,
          "model":model,
          "color":color,
          "transmission":transmission,
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(width: double.infinity,height: 140,
         decoration: BoxDecoration(
          color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
           BoxShadow(
             color: Colors.black.withOpacity(.3),
             spreadRadius: 1,
             blurRadius: 6
           )]),

         child: Row(mainAxisAlignment: MainAxisAlignment.start,
           children: [
           Image.asset(image,width: 156,height: 120,),
           Padding(
             padding: const EdgeInsets.only(left: 20,top: 20),
             child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
               children: [
               Text("$name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
               Text("price \n$price",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
               Text("Get Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
             ],),
           )
         ],),
        ),
      ),
    );
  }
}
