import 'package:flutter/material.dart';

class contactUs extends StatelessWidget {
  const contactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 130,bottom: 60),
        child: Container(width: double.infinity,height: double.infinity,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(20) ,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors:[Color(0xFF00695C),Colors.tealAccent]
          ),
          boxShadow: [BoxShadow(
            color: Colors.black38.withOpacity(.3),
            blurRadius: 8,
            spreadRadius: 3
        ),
        ],
        ),
          child: Column(children: [
            Container(padding: EdgeInsets.all(23),
              child: Text("Contact Us",
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white,
                  shadows:[Shadow(
                    color: Colors.black.withOpacity(.6),
                    blurRadius: 5,

                  )]),),),
            SizedBox(height: 20,),
            ListTile(
              leading: Icon(Icons.phone,color: Colors.white,size: 35,),
              title: Text("+20 11167 223 44",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
            ),
            SizedBox(height: 20,),

            ListTile(
              leading: Icon(Icons.facebook,color: Colors.white,size: 35,),
              title: Text("Car App",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
            ),
            SizedBox(height: 20,),

            ListTile(
              leading: Icon(Icons.email,color: Colors.white,size: 35,),
              title: Text("carapp232@gmail.com",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
            ),
            SizedBox(height: 20,),

            ListTile(
              leading: Icon(Icons.fax,color: Colors.white,size: 35,),
              title: Text("1-116-223-4344",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
            ),
            SizedBox(height: 20,),

            ListTile(
              leading: Icon(Icons.location_on,color: Colors.white,size: 35,),
              title: Text("grove street,los santos",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
            ),
          ],),
        ),
      ),
    );
  }
}
