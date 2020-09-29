import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main()=> runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: shops(),
  ),
);
class shops extends StatefulWidget {
  @override
  _shopsState createState() => _shopsState();
}

class _shopsState extends State<shops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(3.0, 0.0),
            colors: [Colors.blue, Colors.red],
            tileMode: TileMode.repeated,
          ),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Container(
              child:
              Center(
                child: Container(
                  height: 560,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/2018-06-05.jpg'),
                        fit: BoxFit.fitHeight

                    ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(196, 135, 198, 0.7),
                          blurRadius: 40,
                          offset: Offset(0,10),
                        )
                      ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 400,),
                      Center(child: Text(" MODERN BOOK AND GENERAL STORE",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                      Center(child: Text("4.3",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
