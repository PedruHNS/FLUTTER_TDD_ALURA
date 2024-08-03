import 'package:anybank/exceptions/insuficient_amount_exception.dart';
import 'package:anybank/exceptions/invalid_amount_exception.dart';
import 'package:anybank/exceptions/value_null_exception.dart';
import 'package:anybank/models/account_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AccountModel account;
  setUp(() {
    account = AccountModel(
      id: '1',
      name: 'Fulano',
      cpf: '123.456.789-00',
      balance: 80.0,
    );
  });
  group('Teste de Transferencia | ', () {
    test('atualiza o saldo', () {
      account.transfer(50.0);
      expect(account.balance, 30.0);
    });

    test('lança InvalidAmountException', () {
      expect(() => account.transfer(-50.0),
          throwsA(isA<InvalidAmountException>()));
      expect(() => account.transfer(0), throwsA(isA<InvalidAmountException>()));
    });

    test('lança ValueNullException', () {
      expect(() => account.transfer(null), throwsA(isA<ValueNullException>()));
    });

    test('lança InsuficientAmountException', () {
      expect(() => account.transfer(90),
          throwsA(isA<InsuficientAmountException>()));
    });
  });

  group('Teste de Deposito | ', () {
    test('faz deposito', () {
      account.deposit(50.0);
      expect(account.balance, 130.0);
    });
    test('Faz deposito de menor ou igual a 0', () {
      expect(() => account.deposit(0), throwsA(isA<InvalidAmountException>()));
      expect(
          () => account.deposit(-50), throwsA(isA<InvalidAmountException>()));
    });

    test('Faz deposito de valor nulo', () {
      expect(() => account.deposit(null), throwsA(isA<ValueNullException>()));
    });
  });

  group('Teste de juros | ', () {
    test('Juros para conta corrente ', () {
      final accountCurrent = AccountModel(
        id: '1',
        name: 'Fulano',
        cpf: '123.456.789-00',
        balance: 100.0,
      );

      accountCurrent.interest();

      expect(accountCurrent.balance, 101.0);
    });
    test('Juros para conta poupança ', () {
      final accountCurrent = AccountModel(
        id: '1',
        name: 'Fulano',
        cpf: '123.456.789-00',
        balance: 100.0,
        type: AccountType.savings,
      );

      accountCurrent.interest();

      expect(accountCurrent.balance, 103.0);
    });
    test('Juros para conta investimento ', () {
      final accountCurrent = AccountModel(
        id: '1',
        name: 'Fulano',
        cpf: '123.456.789-00',
        balance: 100.0,
        type: AccountType.investment,
      );

      accountCurrent.interest();

      expect(accountCurrent.balance, 107.0);
    });
  });
}
