import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses>{
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'books',
        amount: 500,
        date: DateTime.now(),
        category: Category.work,
    ),
    Expense(
      title: 'cinema',
      amount: 400,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(body:
    Column(
      children: [
        const Text('Chart value'),
        Expanded(
            child: ExpensesList(expenses: _registeredExpenses,)
        )
      ],
    ),
    );
  }
}