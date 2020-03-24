import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget{

  final List<Transaction> translist ;
  TransactionList(this.translist);

  void _addnewtrans(String transtitle,double transamount){
  final newtrans = new Transaction(title: transtitle,amount: transamount);
  }
  @override
  Widget build(BuildContext context){
  return
    Container(
      height: 450,
        child:ListView( children: <Widget>[
          Column(children: translist.map((trans){
          return Card(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin:EdgeInsets.symmetric(horizontal: 10,vertical: 20) ,
                  padding: EdgeInsets.all(5),
                  width: 150,
                  decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.blueAccent,),borderRadius: new BorderRadius.all(Radius.circular(20.0)) ),
                  child:
                  Text( ' ₹${trans.amount }' ,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                  )),

              Column(children: <Widget>[
                Text(trans.title,style: TextStyle(fontSize: 15,color:Colors.black,fontWeight: FontWeight.bold),),
                Text( DateFormat.yMMMd().format(trans.transactiondate),style: TextStyle(fontSize: 10,color:Colors.grey),),
              ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ],
          ),
          );
        }).toList(),)
    ])
  ,);
  }
}