import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ProviderExp.dart';

class Container2 extends StatelessWidget {
  Container2({Key? key}) : super(key: key);

  String textValue1 = "";

  @override
  Widget build(BuildContext context) {

    textValue1 = Provider.of<ProviderExp>(context, listen: true).textValue;

    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Text(textValue1),
      ),
    );
  }
}
