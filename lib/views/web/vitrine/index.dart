import 'package:flutter/material.dart';
import 'package:sinteu/core/app_images.dart';

class VitrinePage extends StatefulWidget {
  const VitrinePage({ Key? key }) : super(key: key);

  @override
  _VitrinePageState createState() => _VitrinePageState();
}

class _VitrinePageState extends State<VitrinePage> {
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
                  'Vitrine',
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