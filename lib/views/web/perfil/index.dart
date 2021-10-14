import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({ Key? key }) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
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
                  'Perfil',
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