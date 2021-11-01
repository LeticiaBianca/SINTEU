import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/core/app_images.dart';
import 'package:sinteu/views/web/cadastro/index.dart';
import 'package:sinteu/views/web/home/index.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  color: AppColors.primaria01,
                  height: 360,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 100),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 50),
                            Text(
                              'Ainda não tem',
                              style:
                                  TextStyle(fontSize: 54, color: AppColors.corFonte02),
                            ),
                            Text(
                              'cadastro?',
                              style:
                                  TextStyle(fontSize: 54, color: AppColors.corFonte02, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 50),
    
                            Container(
                              width: 400,
                              height: 45,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Cadastro()
                                    )
                                  );
                                },
                                child: Text(
                                  'Cadastre-se',
                                    style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(AppColors.primaria03),
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
                      ),
    
                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Container(
                          width: 400,
                          height: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(AppImagens.negocios))),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/5,
                        child: Column(children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(AppImagens.icon01)
                                  )
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              'CONECTA UNIVERSIDADES E EMPRESAS',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:15, bottom: 15),
                        child: VerticalDivider(
                          thickness: 0.9,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/5,
                        child: Column(children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(AppImagens.icon02)
                                  )
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              'CONECTA PROJETOS UNIVERSITÁRIOS COM DEMANDAS REAIS DAS EMPRESAS ',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,

                            ),
                          )
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:15, bottom: 15),
                        child: VerticalDivider(
                          thickness: 0.9,
                          color: Colors.blueGrey,
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width/5,
                        child: Column(children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(AppImagens.icon03)
                                  )
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              'CONECTA ESTUDANTES COM O MERCADO DE TRABALHO E PROFESSORES COM EMPRESÁRIOS',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 100),
                  child: Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width/3,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primaria01),
                      borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                    ),
                    child: Column(children: [
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 30),
                      //   child: Container(
                      //     child: Text(
                      //       'Já possui Cadastro?',
                      //       style: TextStyle(
                      //         fontSize: 40,
                      //         color: AppColors.primaria01
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 15),
                        child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                        'E-MAIL:',
                        style: TextStyle(
                          color: AppColors.primaria02,
                          fontWeight: FontWeight.w800,
                          fontSize: 20
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: Container(
                        height: MediaQuery.of(context).size.height/10,
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          
                          prefixIcon: Icon(Icons.email_rounded, color: Colors.grey,),
                          hintText: 'exemplo@mail.com',
                          hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'SENHA:',
                          style: TextStyle(
                            color: AppColors.primaria02,
                            fontWeight: FontWeight.w800,
                            fontSize: 20
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: Container(
                        height: MediaQuery.of(context).size.height/10,
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15))
                            ),
                            prefixIcon: Icon(Icons.lock, color: Colors.grey,),
                            hintText: '************',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        width: MediaQuery.of(context).size.width/1.1,
                        height: MediaQuery.of(context).size.height/25,
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {}, 
                          child: Text(
                            'Esqueci minha senha',
                            style: TextStyle(
                            fontSize: 12,
                              color: AppColors.primaria02,
                            ),
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        width: 400,
                        height: 45,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text(
                            'Entrar',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(AppColors.primaria03),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              )
                            )
                          ),
                        ),
                      ),
                    ),

                    Divider(),

                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        width: 400,
                        height: 45,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Cadastro()));
                          },
                          child: Text(
                            'Criar nova conta',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(AppColors.primaria02),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              )
                            )
                          ),
                        ),
                      ),
                    ),

                  ],),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
