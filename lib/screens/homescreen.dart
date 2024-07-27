import 'package:carapp/data.dart';
import 'package:carapp/models/type.dart';
import 'package:carapp/widget/boxformat.dart';
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CAR APP",style: TextStyle(fontWeight: FontWeight.bold)),centerTitle: true,
        flexibleSpace: Container(decoration: BoxDecoration(gradient:
        LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors:[Colors.teal,Colors.tealAccent] )),),
        ),

      drawer: Drawer(
        child: Container(padding: EdgeInsets.all(15),
          child: ListView(children: [
            SizedBox(height: 25,),

            Row(children:[
              Container(width: 75,height: 75,
                child: ClipRRect(borderRadius:BorderRadius.circular(50),
                child: Image.asset("images/prof.jpg",fit:BoxFit.fill,),
              ),),
              Expanded(
                child: ListTile(
                  title: Text("omar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                  subtitle: Text("omar123@gmail.com",style: TextStyle(fontSize: 14),),
                ),
              )
            ],),
            //
            SizedBox(height: 30),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "loginscreen");
              },
              child: ListTile(
                leading: Icon(Icons.login),
                title: Text("Login",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            SizedBox(height: 15,),

            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "contactUs");

              },
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("Contact us",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            SizedBox(height: 15,),

            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "aboutUsScreen");

              },
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text("About us",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            SizedBox(height: 15,),

            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.output),
                title: Text("SignOut",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
          ],),
        ),

      ),

      body:GridView.count(padding: EdgeInsetsDirectional.all(40),crossAxisCount: 2,mainAxisSpacing: 40,crossAxisSpacing: 30,
        children: [
          ...TYPE.map((t)=>InkWell(
            onTap: (){
              Navigator.pushNamed(context,"carscreen",arguments:{
                "id":t.id!,
                "name":t.name!,
              });

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                 BoxShadow(
                   color: Colors.black38.withOpacity(.7),
                   offset:Offset(0,0),
                   blurRadius: 6,
                   spreadRadius:2
                 )
                ],
                image: DecorationImage(image: AssetImage(t.image!),


            )),),
          ))
      ],)



      // ListView.builder(itemBuilder: (context,index){
      //   return boxformat(name: "${TYPE[index].name}",image:"${TYPE[index].image}",id:"${TYPE[index].id}");
      // },
      //     itemCount: TYPE.length),



    );
  }
}
