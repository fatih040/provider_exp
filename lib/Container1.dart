import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exm/ProviderExp.dart';

class Container1 extends StatelessWidget {
  Container1({Key? key}) : super(key: key);

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              controller: textEditingController,
            ),

            ElevatedButton(
              onPressed: (){
                print("${textEditingController.text}");
                Provider.of<ProviderExp>(context, listen: false).setTextValue(textEditingController.text);
              },
              child: Text("Kaydet"),
            ),

          ],
        ),
      ),
    );
  }
}
