# Aplicativo AnyBank

Este aplicativo é um exemplo simples de como usar Test-Driven Development (TDD) em Dart.

**OBS: a parte visual desse aplicativo foi desenvolvido pelo orientador do curso Alura.**

## Test-Driven Development (TDD)

TDD é uma metodologia de desenvolvimento onde você escreve testes antes de escrever o código funcional. O ciclo básico do TDD é:

1. **Escrever um teste que falha**: Comece escrevendo um teste unitário para a funcionalidade que você deseja implementar.
2. **Escrever o código mínimo para passar o teste**: Implemente o código necessário para fazer o teste passar.
3. **Refatorar o código**: Melhore o código mantendo todos os testes passando.

### Exemplo



#### 1. teste simples
```dart
void main() {
  test('atualiza o saldo ao fazer uma transferencia', () {
    final account = AccountModel(
      id: '1',
      name: 'Fulano',
      cpf: '123.456.789-00',
      balance: 80.0,
    ); 
      account.transfer(50.0); // transferir 50 reais
      expect(account.balance, 30.0); // saldo deve ser 30 reais
    });
}
```
### 2. grupo de testes (usamos group para agrupar os testes)
```dart
void main() {
   group('Teste de Transferencia | ', () {
    test('atualiza o saldo ao fazer uma transferencia', () {
      account.transfer(50.0);
      expect(account.balance, 30.0);
    });

    test('lança ValueNullException se o valor transferido é nulo', () {
      expect(() => account.transfer(null), throwsA(isA<ValueNullException>()));
    });
  });
}

```
### 3. setup (toda vez que um teste for executado, o setup será executado)
```dart

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
    test('atualiza o saldo ao fazer uma transferencia', () {
      account.transfer(50.0);
      expect(account.balance, 30.0);
    });

    test('lança ValueNullException se o valor transferido é nulo', () {
      expect(() => account.transfer(null), throwsA(isA<ValueNullException>()));
    });
  });
}

```

## ao fazer os testes desse aplicativos, temos os seguintes resultados:
<p align="center">
  <img width="750" height="300" src="/assets/to_readme/retornos.png">
</p>