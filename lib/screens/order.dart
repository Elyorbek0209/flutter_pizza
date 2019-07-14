import 'package:flutter/material.dart';

import 'package:pizza/screens/home.dart';

import 'package:pizza/code/pizza.dart';
import 'package:pizza/screens/review.dart';




class Order extends StatefulWidget{

  @override 
  _State createState() => new _State();

}

class _State extends State<Order>{



  pizza _pizzaOrder = new pizza();


  void _setSize(String value){

    setState(() {
      
      _pizzaOrder.size = value;

    });

  }

  //_setTopping control pizza topping elements
  void _setTopping(int index, bool value){

    setState(() {
      
      String key = _pizzaOrder.toppings.keys.elementAt(index);

      _pizzaOrder.toppings[key] = value;

    });

  }


 @override 
  Widget build(BuildContext context){

    return new Scaffold(

      appBar: new AppBar(title: new Text('Order Pizza'),),

      body: new Center(

        child: new Container(

          padding: new EdgeInsets.all(32.0),

          child: new Column(

            children: <Widget>[

              new DropdownButton<String>(

                value: _pizzaOrder.size,

                //-------------Here we have item list below-------

                items: pizza.sizes.map((String value){

                  return new DropdownMenuItem(
                    
                    value: value,

                    child: new Row(

                      children: <Widget>[

                        new Icon(Icons.local_pizza),

                        new Text('Size: ${value}'),

                      ],

                    ),

                  );

                }).toList(), //Here why we using 'toList(),' cos above item is expecting us a list
               
                //--------------------------------------------

                onChanged: (String value){_setSize(value);},                                                                              

              ),


              //---The Reason of using "Expanded" is when we have yellow black error lane on the bottom of our column when we don't have an enough space, it'll take care
              new Expanded( 
              
                child: new ListView.builder(

                  shrinkWrap: true,

                  itemCount: _pizzaOrder.toppings.length,

                  itemBuilder: (BuildContext context, int index){

                    return new CheckboxListTile(

                      //Here below 'controlAffinity' is controlling List checkbox which should be on the left side not on the right side
                      controlAffinity: ListTileControlAffinity.leading,

                      //Here is our list title
                      title: new Text(_pizzaOrder.toppings.keys.elementAt(index)),

                      value: _pizzaOrder.toppings.values.elementAt(index),

                      //Here we can enable topping list checkbox with '_setTopping'
                      onChanged: (bool value) {_setTopping(index, value);}

                    );

                  },

                )
              
              ),




              new RaisedButton(

                child: new Text('Continue'),

                //Here we'll click our "Continue" Button to move to next page
                onPressed: () {
                  
                  Navigator.push(
                  
                    context, new MaterialPageRoute(

                      builder: (BuildContext context) => new Review(order: _pizzaOrder,)

                    ),
                
                  );
                
                }

              )

            ],

          ),

        ),

      ),


    );


  }



}











