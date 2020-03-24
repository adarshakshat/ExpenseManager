import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget{

  final titleinput = TextEditingController();
  final amountinput = TextEditingController();
  final Function add;
  NewTransaction(this.add);
  @override
  Widget build(BuildContext context){
  return Card(
    elevation:3,
    child:
    Container(
        child:Column(
          children: <Widget>[
            Text('Enter Transaction Details',textAlign:TextAlign.center,),
            TextField(decoration: InputDecoration(labelText: 'Title'),
              onChanged: (val){
              //titleinput=val;
              },
              controller: titleinput,
            ),
            TextField(decoration: InputDecoration(labelText: 'Amount'),
              onChanged: (val){
              //amountinput=val;
              },
              controller: amountinput,
              keyboardType: TextInputType.number,
            ),
            FlatButton(
              onPressed: (){
              print(amountinput.text);
              print(titleinput.text);
              add(titleinput.text,double.parse(amountinput.text));
              },
              child: Text('Add'),textColor: Colors.blueAccent,)
          ],
        )
    ) ,
  );
  }
}