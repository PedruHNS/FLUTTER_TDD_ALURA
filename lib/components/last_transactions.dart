import 'package:anybank/utils/constants.dart';
import 'package:flutter/material.dart';

class LastTransactions extends StatelessWidget {
  const LastTransactions({super.key, required this.icon, required this.transaction, required this.amount});

  final IconData icon;
  final String transaction;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(icon),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(transaction),
              ),
              Text(
                "R\$$amount",
                style:
                    const TextStyle(color: AppColors.transactionColor, fontSize: 16.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
