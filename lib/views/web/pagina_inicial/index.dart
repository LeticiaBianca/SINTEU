import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/core/app_images.dart';
import 'package:sinteu/views/web/cadastro/index.dart';

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
                            Navigator.of(context).pushReplacement(
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
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImagens.negocios))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
