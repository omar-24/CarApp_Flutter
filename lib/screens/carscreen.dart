import 'package:carapp/data.dart';
import 'package:carapp/models/car.dart';
import 'package:carapp/widget/boxformat.dart';
import 'package:carapp/widget/boxformat2.dart';
import 'package:flutter/material.dart';

class carscreen extends StatelessWidget {
  const carscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data;
    data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    String name = data["name"];
    String id = data["id"];
    List<car> filter=CARS.where((element){
      return element.typeNumber!.contains(id);}).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("$name",style: TextStyle(fontWeight: FontWeight.bold),),centerTitle: true,
        flexibleSpace: Container(decoration: BoxDecoration(gradient:
        LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors:[Colors.orange,Colors.yellow] )),),
      ),

      body: ListView.builder(itemBuilder: (context,index){
        return boxformat2(name: "${filter[index].name}",image:"${filter[index].imageUrl}",id:"${filter[index].id}", price: "${filter[index].price}", model:"${filter[index].model}", color:"${filter[index].color}", transmission:"${filter[index].transmission}",);
      },
          itemCount: filter.length),
    );
  }
}
