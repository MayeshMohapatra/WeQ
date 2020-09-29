import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:we_q/loginscreen.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
    )
);
class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image:
        AssetImage("assets/images/logo12.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 600,),
          FlatButton(
            child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(30)
                ),

                child: Icon(Icons.arrow_forward_ios)
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              {
                return Homepage();
              }));
            },
          ),
        ],
      ),
    );
  }
}

