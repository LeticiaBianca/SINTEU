import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/views/web/components/combobox/index.dart';
import 'package:sinteu/views/web/home/index.dart';

class CadastrosPage extends StatefulWidget {
  const CadastrosPage({ Key? key }) : super(key: key);

  @override
  _CadastrosPageState createState() => _CadastrosPageState();
}

class _CadastrosPageState extends State<CadastrosPage> {
  @override
  Widget build(BuildContext context) {
    var atividadeController = new TextEditingController();
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
                    'Cadastro de demandas',
                    style: TextStyle(
                      fontSize: 55,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

          //colocar um dropdown aqui
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          //   child: Text(
          //     'O que você deseja cadastrar?',
          //     style: TextStyle(
          //    color: AppColors.primaria01,
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 20,
          //     ),
          //   ),
          // ),

          // Padding(
          //   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //         prefixIcon: Icon(Icons.keyboard_arrow_down),
          //     ),
          //           ),
          //         ),

          ComboBox(
              controller: atividadeController,
              aoSelecionar: (value) {
                print(atividadeController.text);
              },
              hint: 'O que você deseja cadastrar?',
              items: [
                DropdowItem(key: '1', value: 'Demandas de Empresas'),
                DropdowItem(key: '2', value: 'Projetos em Desenvolvimento'),
                DropdowItem(key: '3', value: 'Editais de Extensão'),
                DropdowItem(key: '4', value: 'Oportunidades de Emprego'),
                DropdowItem(key: '5', value: 'Oportunidades de Estágio'),
                DropdowItem(key: '6', value: 'Oficina de Ideias'),
                DropdowItem(key: '7', value: 'Oferta de Serviços'),
              ],
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
                    height: 40,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => HomePage()
                          )
                        );
                      },
                        child: Text(
                          'Cadastrar',
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