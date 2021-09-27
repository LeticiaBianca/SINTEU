import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
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
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Container(
                width: MediaQuery.of(context).size.width-50,
                height: MediaQuery.of(context).size.height/5,
                color: AppColors.primaria01,
                child: Center(
                  child: Text(
                    'Grupos',
                    style: TextStyle(
                      fontSize: 55,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Container(
                    width: MediaQuery.of(context).size.width*2/3,
                    height: MediaQuery.of(context).size.height,
                    color: AppColors.primaria01,
                  ),
                ),
                //  Padding(
                //         padding: const EdgeInsets.only(top:15, bottom: 15),
                //         child: VerticalDivider(
                //           thickness: 0.9,
                //           color: Colors.blueGrey,
                //         ),
                //       ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 25, bottom: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width/3-60,
                   
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width-50,
                          height: MediaQuery.of(context).size.height/11,
                          child: Center(
                            child: Text(
                              'Seus grupos',
                              style: TextStyle(  
                                color: Colors.grey
                              ),
                            ),
                          ),
                        ),
                        _buildgruposja(AppImagens.negocios, 'Grupo da Mecatronica', 'Jessica Alves, José da Silva, Renato...'),
                        Container(
                          width: MediaQuery.of(context).size.width-50,
                          height: MediaQuery.of(context).size.height/11,
                          child: Center(
                            child: Text(
                              'Grupos Sugeridos',
                              style: TextStyle(  
                                color: Colors.grey
                              ),
                            ),
                          ),
                        ),
                        _buildgruposnew(AppImagens.negocios, 'Programadores em Divinópolis', '10 participantes'),
                        _buildgruposnew(AppImagens.negocios, 'Programadores em Divinópolis', '10 participantes'),
                        _buildgruposnew(AppImagens.negocios, 'Programadores em Divinópolis', '10 participantes'),
                        _buildgruposnew(AppImagens.negocios, 'Programadores em Divinópolis', '10 participantes'),
                        _buildgruposnew(AppImagens.negocios, 'Programadores em Divinópolis', '10 participantes')
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
    );
  }
  Widget _buildgruposja(foto, nome, participantes){
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        width: MediaQuery.of(context).size.width/3-60,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaria02), 
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(foto),                             
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        nome,
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.primaria01,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      child: Text(
                        participantes,
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.primaria02,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
   }
   Widget _buildgruposnew(foto, nome, participantes){
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        width: MediaQuery.of(context).size.width/3-60,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaria02), 
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(foto),                             
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        nome,
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.primaria01,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      child: Text(
                        participantes,
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.primaria02,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 30,
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      'Participar',
                      style: TextStyle(
                        color: AppColors.corFonte02,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        AppColors.primaria03
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )
                      )
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
   }
}