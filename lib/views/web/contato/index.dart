import 'package:flutter/material.dart';
import 'package:sinteu/core/app_images.dart';

class ContatoPage extends StatefulWidget {
  const ContatoPage({ Key? key }) : super(key: key);

  @override
  _ContatoPageState createState() => _ContatoPageState();
}

class _ContatoPageState extends State<ContatoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        ListView(
          children: [

            Container(
              child: Center(
                child: Text(
                  'Contato',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    color: Colors.black
                  ),
                ),
              ),
            )
          ],
        ),
    );
  }
}