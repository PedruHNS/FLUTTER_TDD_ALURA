import 'package:anybank/components/buttons.dart';
import 'package:anybank/screens/dashboard.dart';
import 'package:flutter/material.dart';

class Transfer extends StatelessWidget {
  Transfer({super.key});

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transferência"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text("Quanto você quer transferir?", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 8.0),
                  child: RichText(
                      text: const TextSpan(
                          text: "Saldo disponível: ",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: <InlineSpan>[
                        TextSpan(text: "R\$ 880.67", style: TextStyle(fontWeight: FontWeight.w500))
                      ])),
                ),
                TextField(controller: textController, decoration: const InputDecoration(hintText: "R\$ 0.00"), keyboardType: TextInputType.number,),
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
