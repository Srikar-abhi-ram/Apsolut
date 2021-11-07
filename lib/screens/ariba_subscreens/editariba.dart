import 'package:flutter/material.dart';


class Editariba extends StatefulWidget {
  @override
  _EditaribaState createState() => _EditaribaState();
}

class _EditaribaState extends State<Editariba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,centerTitle: true,title: Text("Edit the details"),),
      body: Padding(
              padding:const EdgeInsets.all(20.0), 
            child: Center(
              child: Column
              (children:<Widget> [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "EmpHc"
                    ),
                    
                  ),
                  SizedBox(height: 60,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "load mandays"
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "ft-1"
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Free mandays"
                    ),
                  ),
                  SizedBox(height: 30,),

                FlatButton(onPressed: (){}, child: Text("submit"), color: Colors.blueAccent,)
              ]
              )
              )
              )

    );
  }
}