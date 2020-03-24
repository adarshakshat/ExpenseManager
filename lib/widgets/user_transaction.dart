import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';
class UserTransaction extends StatefulWidget{
@override
_UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction>{

  final List<Transaction>  _usertransactions = [
    Transaction(
      id:'t1',
      title:'Shoes',
      amount: 2200,
      transactiondate: DateTime.now(),
    ),
    Transaction(
      id:'t2',
      title:'Grocery',
      amount: 200,
      transactiondate: DateTime.now(),
    ),
    Transaction(
      id:'t3',
      title:'Mobile Phone',
      amount: 100200,
      transactiondate: DateTime.now(),
    ),
  ];

  void _addnewtrans(String transtitle,double transamount){
    final trans = new Transaction(title: transtitle,amount: transamount,transactiondate: DateTime.now(),id: DateTime.now().toString());
    setState(() {
      _usertransactions.add(trans);
    });
  }
  @override
  Widget build(BuildContext context){
    return Container( child: Column(
        children: <Widget>[
          NewTransaction(_addnewtrans),
          TransactionList(_usertransactions),
          ],
        ),
    );
  }
}