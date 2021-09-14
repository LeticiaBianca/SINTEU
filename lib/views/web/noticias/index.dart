import 'package:flutter/material.dart';
import 'package:sinteu/core/app_images.dart';

class NoticiasPage extends StatefulWidget {
  const NoticiasPage({ Key? key }) : super(key: key);

  @override
  _NoticiasPageState createState() => _NoticiasPageState();
}

class _NoticiasPageState extends State<NoticiasPage> {
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
                  'Notícias',
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