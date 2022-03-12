
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.login, color: Colors.grey.shade700,)),
        title: Text("Login", style: TextStyle(fontSize: 30, color: Colors.grey.shade700 ),),
        centerTitle: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: Colors.greenAccent,
        ),

        backgroundColor: Colors.grey.shade900,


        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width*0.5,
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.12,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.greenAccent), 
                    hintText: "abc@gmail.com",
                    hintStyle: TextStyle(color: Colors.grey[200]) ,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 2.0,
                        color: Colors.grey.shade200,
                      ),
                      
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 5.0,
                        color: Colors.greenAccent,
                        
                      )
                     
                    ),
                  
                    
                  ),
                  
                )),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.18,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.greenAccent,),
                     hintText: "abc123",
                    hintStyle: TextStyle(color: Colors.grey[200]) ,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 2.0,
                        color: Colors.grey.shade200)),
                    
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 5.0,
                        color: Colors.greenAccent,
                    )
                    ),
                    

                )),
              ),
              ElevatedButton(onPressed: (){}, child: Text("Login", style: TextStyle(fontSize: 20, color: Colors.greenAccent),),
            
              style: 
            
              ButtonStyle (
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(color: Colors.greenAccent, width: 5.0),
                  
                  ),
                  ),
                
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade700)),
                

              ),
              ],
          ),),
        ) ,
        
      
    );
  }
}