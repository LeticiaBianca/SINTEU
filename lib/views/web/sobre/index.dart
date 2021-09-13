import 'package:flutter/material.dart';
import 'package:sinteu/core/app_images.dart';

class SobrePage extends StatefulWidget {
  const SobrePage({Key? key}) : super(key: key);

  @override
  _SobrePageState createState() => _SobrePageState();
}

class _SobrePageState extends State<SobrePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Center(
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImagens.logoEscrita)
                      )
                    ),
                  ),
                ),
              ),
            ),

            Container(
              child: Center(
                child: Text(
                  'Nome',
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
