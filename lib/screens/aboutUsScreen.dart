import 'package:flutter/material.dart';

class aboutUsScreen extends StatelessWidget {
  const aboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
        Container(height: 150,width: double.infinity,padding: EdgeInsets.only(top: 35),
          decoration:BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight:Radius.circular(50),bottomLeft:Radius.circular(50)),
              gradient:LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors:[Color(0xFF00695C),Colors.tealAccent]
              ),
            boxShadow: [BoxShadow(
              color: Colors.black38,
              spreadRadius: 3,
              blurRadius: 6,
            )]
          ),
        child: Column(children: [
          Text("CAR APP",style: TextStyle(fontWeight:FontWeight.bold,fontSize:30),),
          SizedBox(height: 10,),
          Text("Your gateway to the automotive world",style: TextStyle(fontWeight: FontWeight.bold),)
        ],),
        ),
        Container(padding: EdgeInsets.all(25),
          child:Column(children: [
            Text("About Us",style: TextStyle(fontWeight:FontWeight.bold,fontSize:30),),
            SizedBox(height: 20,),
            Text("Welcome to the ultimate destination for automotive enthusiasts – our state-of-the-art car store app. Immerse yourself in"
                " a world where choosing your dream vehicle is as effortless as a tap on your screen. With an extensive inventory featuring the latest"
                " models and a diverse range of pre-owned gems, our app ensures that every car lover finds their perfect match. Explore high-resolution images,"
                " detailed specifications, and immersive 360-degree views to make informed decisions. Seamlessly schedule test drives, receive personalized"
                " recommendations based on your preferences, and stay updated on exclusive deals and promotions. Our user-friendly interface and secure payment options"
                " guarantee a smooth purchasing process,",
                style:TextStyle(fontSize: 16),textAlign: TextAlign.center,),
            SizedBox(height: 70,),
            Text("www.carapp.com",style: TextStyle(fontSize:13),),

          ],)
        ),
      ],),

    );
  }
}
