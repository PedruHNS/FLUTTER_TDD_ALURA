import 'package:anybank/components/account_actions.dart';
import 'package:anybank/components/last_transactions.dart';
import 'package:anybank/components/logo.dart';
import 'package:anybank/screens/charge.dart';
import 'package:anybank/screens/transfer.dart';
import 'package:anybank/utils/constants.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: AppStyles.headerGradient,
              padding: const EdgeInsets.fromLTRB(24.0, 64.0, 24.0, 16.0),
              child: const Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 48.0),
                    child: Logo(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Olá, Matheus!",
                        style: TextStyle(fontSize: 28),
                      ),
                      Icon(
                        Icons.notifications_outlined,
                        size: 28,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 16.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: AppColors.card,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Text("Conta corrente", style: TextStyle(fontSize: 16.0),),
                      Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 32.0),
                      child: Text(
                        "R\$ 880.67",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Transfer()));
                            },
                            child: const AccountActions(
                                text: "Transferir",
                                icon: Icons.account_balance_wallet)),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (_) => Charge()));
                            },
                            child: const AccountActions(
                                text: "Cobrar", icon: Icons.payments)),
                        const AccountActions(text: "Cartões", icon: Icons.credit_card),
                        const AccountActions(text: "Recarga", icon: Icons.phone_iphone),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 16.0),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Próximo pagamento",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                  Text("Quarta-feira, 15 Mai"),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 16.0),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Empréstimos",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                  Text("Valor disponível"),
                  Text(
                    "R\$ 10,000.00",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 16.0),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 32.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: AppColors.card,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        Text("Últimas transações", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),),
                        Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        LastTransactions(icon: Icons.restaurant, transaction: "Compra no iFood", amount: "25.80"),
                        LastTransactions(icon: Icons.shopping_bag, transaction: "Compra na Leroy Merlin", amount: "45.32"),
                        LastTransactions(icon: Icons.payments, transaction: "Transferência recebida", amount: "80.80"),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
