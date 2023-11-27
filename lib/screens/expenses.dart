import 'package:flutter/material.dart';
import 'package:expense_app/models/expense.dart';
import 'package:expense_app/widgets/expenses-list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('The Chart'),
            Expanded(
              child: ExpensesList(
                expenses: _registeredExpenses,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
