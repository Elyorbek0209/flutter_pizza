import 'package:flutter/material.dart';

import 'package:pizza/screens/review.dart';

import 'package:pizza/code/pizza.dart';




class Home extends StatelessWidget{




  @override 
  Widget build(BuildContext context){

    return new Scaffold(

      appBar: new AppBar(title: new Text('Welcome Pizza World'),),

      body: new Center(

        child: new Container(

          padding: new EdgeInsets.all(32.0),

          child: new Column(

            children: <Widget>[

              new Image.asset('images/pizza4.jpg'),

              new RaisedButton(

                child: new Text('Order'),

                //Here we'll click our "Order" Button to move to next page
                onPressed: () {Navigator.of(context).pushNamed('/Order');}
              
              ),


            ],

          ),

        ),

      ),


    );


  }

}














