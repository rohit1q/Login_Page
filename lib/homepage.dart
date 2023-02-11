import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Home Page")
      ),

      body: SafeArea(
        child: Column(
          children: [


            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    keyboardType:TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Enter email",
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      border: InputBorder.none
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    keyboardType:TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                        border: InputBorder.none
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10)
              ),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => Profile_page()
                ));
              },
                child: Text("Login",style: TextStyle(fontSize: 20),),
                color: Colors.amber,
              ),
            ),
          ],
        )
        ),
    );
  }
}
