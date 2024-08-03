import 'package:anybank/exceptions/insuficient_amount_exception.dart';
import 'package:anybank/exceptions/invalid_amount_exception.dart';

import '../exceptions/value_null_exception.dart';

enum AccountType {
  savings,
  current,
  investment,
}

class AccountModel {
  final String id;
  final String name;
  final String cpf;
  double balance;
  final AccountType type;

  AccountModel({
    required this.id,
    required this.name,
    required this.cpf,
    required this.balance,
    this.type = AccountType.current,
  });

  void transfer(double? value) {
    if (value == null) {
      throw ValueNullException();
    }

    if (value > balance) {
      throw InsuficientAmountException();
    }
    if (value <= 0) {
      throw InvalidAmountException();
    }

    balance -= value;
  }

  void deposit(double? value) {
    if (value == null) {
      throw ValueNullException();
    }

    if (value <= 0) {
      throw InvalidAmountException();
    }

    balance += value;
  }

  void interest() {
    switch (type) {
      case AccountType.current:
        balance += balance * 0.01;
        break;
      case AccountType.savings:
        balance += balance * 0.03;
        break;
      case AccountType.investment:
        balance += balance * 0.07;
        break;
    }
  }
}
