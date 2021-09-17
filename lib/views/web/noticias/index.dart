import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';

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

            Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Center(
                child: Text(
                  'Notícias',
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColors.primaria01,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),

            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                  _buildNoticias("Título da notícia", 'Descrição... ' +
                  'Empresário X cadastrou uma demanda que pagará 1000 reais. ' +
                  'Os interessados devem estar matriculados na faculdade Y.'
                  ),
                  
                ],
              ),
            ),


          ],
        ),
    );
  }

  Widget _buildNoticias(titulo, descricao){    
    return Container(
      padding: EdgeInsets.all(8),
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.corDeFundo01,
        border: Border.all(
          color: AppColors.corFontePadrao,
        ),
      ),
      
      child: Column(
        children: [
          Text(
          titulo, 
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: AppColors.primaria03,
          ),
         
        ),

          Divider(),

          Text(
          descricao, 
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: AppColors.corFontePadrao,
          ),
         
        ),

        ],
      ),

      
    );
  }

}