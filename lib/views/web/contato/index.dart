import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              color: AppColors.primaria01,
              child: Center(
                child: Text(
                  'Como você prefere entrar em contato com a gente?',
                  style: TextStyle(   
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w900
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      width: MediaQuery.of(context).size.width/2-10,
                      child: Column(  
                        children: [
                          Center(
                            child: IconButton(
                              icon: Icon(
                                Icons.email_outlined,
                                color: Colors.grey,
                                size: 100,
                              ),
                              onPressed: null,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: Center(
                              child: Text(
                                'E-MAIL',
                                style: TextStyle(  
                                  fontWeight: FontWeight.w800,
                                  fontSize: 25,
                                  color: AppColors.primaria01
                                ),
                              )
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Center(
                              child: Text(
                                'Tem alguma dúvida?',
                                style: TextStyle(  
                                  fontSize: 15,
                                  color: Colors.grey
                                ),
                              )                           
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Center(
                              child: Text(
                                'sinteu.cefet@gmail.com',
                                style: TextStyle(  
                                  fontSize: 15,
                                  color: AppColors.primaria03
                                ),
                              )                           
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15, bottom: 15),
                    child: VerticalDivider(
                      thickness: 0.9,
                      color: Colors.blueGrey,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      width: MediaQuery.of(context).size.width/2-10,
                      child: Column(  
                        children: [
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(AppImagens.codeInsta)
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Center(
                              child: Text(
                                'INSTAGRAM',
                                style: TextStyle(  
                                  fontWeight: FontWeight.w800,
                                  fontSize: 25,
                                  color: AppColors.primaria01
                                ),
                              )                           
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Center(
                              child: Text(
                                'Mande mensagem a qualquer hora',
                                style: TextStyle(  
                                  fontSize: 15,
                                  color: Colors.grey
                                ),
                              )                           
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Center(
                              child: Text(
                                '@sinteu_',
                                style: TextStyle(  
                                  fontSize: 15,
                                  color: AppColors.primaria03
                                ),
                              )                           
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),
          ],
        ),
    );
  }
}