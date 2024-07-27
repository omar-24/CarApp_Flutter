import 'package:flutter/material.dart';

class detailscreen extends StatelessWidget {
  const detailscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data;
    data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    String name = data["name"];
    String id = data["id"];
    String image = data["image"];
    String price = data["price"];
    String model = data["model"];
    String color = data["color"];
    String transmission = data["transmission"];

    return Scaffold(
       appBar: AppBar(backgroundColor: Colors.black.withOpacity(.8) ,
         title: Text("$name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.white)),centerTitle: true,),


      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(width:double.infinity,height: 700,
          decoration:BoxDecoration(color: Colors.white,borderRadius:BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.3),
                spreadRadius: 1,
                blurRadius: 6
            )]
          ),

          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 340,height: 180 ,padding: EdgeInsets.only(left: 70,bottom: 10),
                child:Image.asset("$image",fit: BoxFit.fill,),
              ),
              Container(alignment: Alignment.center,child:Text("$name\n",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
              ),
              Container(width: double.infinity,height: 1,color: Colors.black,),

              Container(padding: EdgeInsets.all(20),

              child:Container(width: double.infinity,height: 300,padding: EdgeInsets.all(15),
                decoration: BoxDecoration(color:Colors.black54,borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                  color: Colors.black54,
                  spreadRadius: 2,
                  blurRadius: 7
                )]
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                  Text("price: $price \n",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17,color: Colors.white)),
                  Text("model: $model \n",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17,color: Colors.white)),
                  Text("transmission : $transmission \n",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17,color: Colors.white)),
                  Text("color : $color \n",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17,color: Colors.white)),
                  Text("id : $id \n",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17,color: Colors.white)), ],),
              ),),
              Container(alignment: Alignment.center,
                  child: FloatingActionButton(onPressed: (){},backgroundColor: Colors.black.withOpacity(.7),hoverColor: Colors.black12.withOpacity(.4),
                child: Text("   BUY   ",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),)),


            ],
          ),
        ),
      ),

    );
  }
}
