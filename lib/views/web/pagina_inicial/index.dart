import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: AppColors.primaria01,
            height: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 100),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Ainda não tem',
                      style:
                          TextStyle(fontSize: 54, color: AppColors.corFonte02),
                    ),
                    Text(
                      'cadastro?',
                      style:
                          TextStyle(fontSize: 54, color: AppColors.corFonte02),
                    ),
                    SizedBox(height: 50),
                    TextButton(
                        onPressed: () {
                          print('Clicou no cadastre-se');
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.primaria03)),
                        child: Text(
                          'Cadastre-se',
                          style: TextStyle(color: AppColors.corFonte02),
                        ))
                  ],
                ),
                SizedBox(width: 20),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo.jpeg'))),
                ),
                SizedBox(width: 20),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 50, 50),
                    child: IconButton(
                      icon: Icon(
                        Icons.chat,
                        color: AppColors.corFonte02,
                        size: 54,
                      ),
                      onPressed: () {
                        print('Clicou no Chat');
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
