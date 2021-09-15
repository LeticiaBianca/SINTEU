import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/views/web/home/index.dart';

class CadastrosPage extends StatefulWidget {
  const CadastrosPage({ Key? key }) : super(key: key);

  @override
  _CadastrosPageState createState() => _CadastrosPageState();
}

class _CadastrosPageState extends State<CadastrosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          //texto cadastre sua demanda
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Center(
                child: Text(
                  'Cadastre sua demanda',
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColors.primaria01,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),

          //colocar um dropdown aqui
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              'O que você deseja cadastrar?',
              style: TextStyle(
             color: AppColors.primaria01,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.keyboard_arrow_down),
              ),
                    ),
                  ),

          Divider(height: 20,),

          Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      'Nome do Cadastro:',
                      style: TextStyle(
                          color: AppColors.primaria01,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          ),
                    ),
                  ),

          Divider(height: 20,),

          Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      'Descrição:',
                      style: TextStyle(
                          color: AppColors.primaria01,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          ),
                    ),
                  ),
          
          Divider(height: 20,),

          Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      'Endereço:',
                      style: TextStyle(
                          color: AppColors.primaria01,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          ),
                    ),
                  ),

           Divider(height: 20,),

          Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      'Área do Conhecimento:',
                      style: TextStyle(
                          color: AppColors.primaria01,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          ),
                    ),
                  ),

           Divider(height: 20,),

          Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      'Palavras-chave:',
                      style: TextStyle(
                          color: AppColors.primaria01,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          ),
                    ),
                  ),

          Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Container(
                        width: 350,
                        height: 31,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text(
                            'Cadastrar',
                            style: TextStyle(
                                color: AppColors.corFonte02,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.primaria01)),
                        ),
                      ),
                    ),
                  ),

        ],
      ),
    );
  }
}