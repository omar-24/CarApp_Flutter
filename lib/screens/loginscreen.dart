import 'package:flutter/material.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.topLeft,
        colors: [Colors.white10,Colors.grey.withOpacity(.5),]
      ))
      ,child:Column(children:[

        Container(height: 220,width:double.infinity,padding: EdgeInsets.only(left: 30,bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Login",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.8)),),
              Text("Enter a beautiful world",style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(.8)),)

            ],),),




        Expanded(child:Container(padding:EdgeInsets.all(40),
          decoration: BoxDecoration(
              gradient:LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                  colors:[Color(0xFF00695C),Colors.tealAccent]
              ) ,
              boxShadow: [
                BoxShadow(
                  color: Colors.black38.withOpacity(.3),
                  blurRadius: 8,
                  spreadRadius: 3
                ),
              ],
              borderRadius:BorderRadius.only(topLeft:Radius.circular(40),topRight: Radius.circular(40))
          ),
          child:ListView(
            children: [
              SizedBox(height:70),

              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(borderSide:BorderSide(color: Colors.black45,width: 2)),
                  border: UnderlineInputBorder(borderSide:BorderSide(color: Colors.black45)),
                  hintText: "Your Email",
                  hintStyle: TextStyle(fontSize: 17),
                  prefixIcon: Icon(Icons.email_outlined),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),

              SizedBox(height: 30,),


              TextFormField(
                decoration: InputDecoration(
                  focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.black45,width:2)) ,
                  border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black45)),
                  hintText: "Password",
                  hintStyle: TextStyle(fontSize: 17),
                  prefixIcon: Icon(Icons.lock_outline),
                  filled: true,
                  fillColor: Colors.transparent,


                ),
              ),


              Stack(alignment: Alignment.topRight,
                children: [
                  Container(width: double.infinity,),
                  Padding(
                    padding: const EdgeInsets.only(top:40,bottom:70),
                    child:InkWell(onTap:(){},child: Text("forget password ?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.8)),)),
                  )
                ],),

              Container(width: double.infinity,height: 60,
                decoration:BoxDecoration(
                  boxShadow:[
                    BoxShadow(
                      color: Colors.black.withOpacity(.4),
                      spreadRadius: 2,
                      blurRadius: 8
                    )
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: MaterialButton(
                    child: Text("LOGIN",style: TextStyle(fontSize: 30,color: Colors.black),),
                    onPressed: (){}),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Container(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have An Acount ? ",style: TextStyle(fontSize: 16,color: Colors.white)),
                    InkWell(onTap:(){}, child: Text("Register Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.8))))
                  ],),),
              )
            ],),
        )
        ),
      ],),),
    );
  }
}
