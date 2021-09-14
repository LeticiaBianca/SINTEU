import 'package:flutter/material.dart';
import 'package:sinteu/core/app_images.dart';

class GruposPage extends StatefulWidget {
  const GruposPage({ Key? key }) : super(key: key);

  @override
  _GruposPageState createState() => _GruposPageState();
}

class _GruposPageState extends State<GruposPage> {
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
                  'Grupos',
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