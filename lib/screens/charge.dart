import 'package:anybank/components/buttons.dart';
import 'package:anybank/screens/dashboard.dart';
import 'package:anybank/utils/constants.dart';
import 'package:flutter/material.dart';

class Charge extends StatelessWidget {
  Charge({super.key});

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cobrar"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text("Quanto você quer cobrar?", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),),
                ),
                TextField(
                  controller: textController,
                  decoration: const InputDecoration(hintText: "R\$ 0.00"),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
            Column(
              children: <Widget>[
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: PrimaryButton(text: "Continuar", onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const _ChargeConfirm()));
                        }),
                      ),
                      SecondaryButton(text: "Cancelar", onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Dashboard()));
                      }),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _ChargeConfirm extends StatelessWidget {
  const _ChargeConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cobrança"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Valor:",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 32.0),
                  child: Text(
                    "50",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primary),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text("Nome", style: TextStyle(fontSize: 22),),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 32.0),
                  child: Text(
                    "Matheus Oliveira Santos",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text("CPF", style: TextStyle(fontSize: 22),),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 32.0),
                  child: Text("***.***.142-55", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text("Instituição", style: TextStyle(fontSize: 22),),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 32.0),
                  child: Text("AnyBank", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 32.0),
                  child: Text("Mostre o QR code na sua tela ou envie o link para quem vai pagar:", style: TextStyle(fontSize: 22),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/qr.png"),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: PrimaryButton(text: "Continuar", onTap: (){}),
                      ),
                      SecondaryButton(text: "Cancelar", onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Dashboard()));
                      }),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
