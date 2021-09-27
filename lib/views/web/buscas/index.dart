import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/views/web/buscas/main.dart';
import 'package:sinteu/views/web/components/combobox/index.dart';

class BuscasPage extends StatefulWidget {
  const BuscasPage({ Key? key }) : super(key: key);

  @override
  _BuscasPageState createState() => _BuscasPageState();
}

class _BuscasPageState extends State<BuscasPage> {
  @override
  Widget build(BuildContext context) {
    var atividadeController = new TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        ListView(
          children: [

            //texto buscar
          Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Container(
                width: MediaQuery.of(context).size.width-50,
                height: MediaQuery.of(context).size.height/5,
                color: AppColors.primaria01,
                child: Center(
                  child: Text(
                    'Buscar',
                    style: TextStyle(
                      fontSize: 55,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            ComboBox(
              controller: atividadeController,
              aoSelecionar: (value) {
                print(atividadeController.text);
              },
              hint: 'O que você Procura?',
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
                
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Digitar...'),
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
                                    builder: (context) => Buscar()));
                          },
                          child: Text(
                            'Buscar',
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