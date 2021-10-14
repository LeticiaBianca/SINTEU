import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/views/web/home/index.dart';
import 'package:sinteu/views/web/perfil/index.dart';

class ConfiguracoesPage extends StatefulWidget {
  const ConfiguracoesPage({ Key? key }) : super(key: key);

  @override
  _ConfiguracoesPageState createState() => _ConfiguracoesPageState();
}

class _ConfiguracoesPageState extends State<ConfiguracoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [

          //texto cadastre sua demanda
          Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Container(
                width: MediaQuery.of(context).size.width-50,
                height: MediaQuery.of(context).size.height/5,
                color: AppColors.primaria01,
                child: Center(
                  child: Text(
                    'Editar perfil',
                    style: TextStyle(
                      fontSize: 55,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

          Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text(
                            'Informações Pessoais',
                            style: TextStyle(
                              color: AppColors.primaria01,
                              fontWeight: FontWeight.w800,
                              fontSize: 30,
                            ),
                          ),
                        ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
                      'Nome:',
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
                      'Sobrenome:',
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
                      'E-mail:',
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
                      'Telefone:',
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
                      'CPF ou CNPJ:',
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
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text(
                            'Endereço',
                            style: TextStyle(
                              color: AppColors.primaria01,
                              fontWeight: FontWeight.w800,
                              fontSize: 30,
                            ),
                          ),
                        ),

          Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      'Rua:',
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
                      'Bairro:',
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
                    height: 40,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(
                          // MaterialPageRoute(
                          //   builder: (context) => Perfil()
                          // )
                        );
                      },
                        child: Text(
                          'Confirmar alterações',
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
              ),
          ),

        ],
      ),
    );
  }
}