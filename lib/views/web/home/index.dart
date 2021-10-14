import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/core/app_images.dart';
import 'package:sinteu/views/web/buscas/index.dart';
import 'package:sinteu/views/web/buscas/main.dart';
import 'package:sinteu/views/web/cadastros/index.dart';
import 'package:sinteu/views/web/contato/index.dart';
import 'package:sinteu/views/web/grupos/index.dart';
import 'package:sinteu/views/web/noticias/index.dart';
import 'package:sinteu/views/web/notificacoes/index.dart';
import 'package:sinteu/views/web/pagina_inicial/index.dart';
import 'package:sinteu/views/web/perfil/index.dart';
import 'package:sinteu/views/web/sobre/index.dart';
import 'package:sinteu/views/web/vitrine/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  var menuAtivo = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final _pageController = new PageController();
  var _paginaAtual = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 220),
        child: Column(
          children: [
            _buildAreaLogo(screenSize.width),
            _buildAreaMenu(screenSize.width)
          ],
        ),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          PaginaInicial(), //0
          SobrePage(),//1
          NoticiasPage(), //2
          GruposPage(),//3
          VitrinePage(),//4
          NotificacoesPage(),//5
          ContatoPage(),//6
          CadastrosPage(),//7
          BuscasPage(),//8
          Buscar(),
          Perfil(),
          
        ],
      ),


      //rodapé
      // bottomSheet: Container(
      //     height: 50,
      //     color: AppColors.primaria02,
      //     child: Center(
      //       child: Text(
      //           '\u00a9 SINTEU - 2021', 
      //           style: TextStyle(
      //             fontSize: 20,
      //             color: AppColors.primaria01,
      //             fontWeight: FontWeight.w900
      //           )
      //       ),
      //     ),
      //   ),
      //isScrollControlled = false,
        

    );
  }

  Widget _buildAreaLogo(largura) {
    return Container(
      color: AppColors.primaria02,
      height: 150,
      width: largura,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 15, 10, 0),
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImagens.logo))),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SINTEU', 
                style: TextStyle(
                  fontSize: 40,
                  color: AppColors.primaria01,
                  fontWeight: FontWeight.w900
                )
              ),
              Text(
                'Sistema de Integração entre Empresas e Universidades',
                style: TextStyle(
                  fontSize: 32,
                  color: AppColors.primaria01,
                  fontWeight: FontWeight.w600
                ),
              )
            ],
          ),

          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 50, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: (){ 
                          _pageController.jumpToPage(10);
                        },
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: AssetImage(AppImagens.perfil)
                            )               
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAreaMenu(largura) {
    return Container(
      color: AppColors.corDeFundo01,
      height: 70,
      width: largura,
      child: Row(
        children: [
          _buildItemMenu(
              Icons.home, 'Home', 0, () => _pageController.jumpToPage(0)),
          _buildItemMenu(
              Icons.add, 'Cadastros', 1, () => _pageController.jumpToPage(7)),
          _buildItemMenu(
              Icons.search, 'Buscas', 2, () => _pageController.jumpToPage(8)),
          _buildItemMenu(Icons.notification_important, 'Noticias', 3,
              () => _pageController.jumpToPage(2)),
          _buildItemMenu(
              Icons.group, 'Grupos', 4, () => _pageController.jumpToPage(3)),
          _buildItemMenu(Icons.amp_stories_rounded , 'Vitrine', 5,
              () => _pageController.jumpToPage(4)),
          _buildItemMenu(Icons.notifications, 'Notificações', 6,
              () => _pageController.jumpToPage(5)),
          _buildItemMenu(Icons.contact_page, 'Contato', 7,
              () => _pageController.jumpToPage(6)),
          _buildItemMenu(
              Icons.info, 'Sobre', 8, () => _pageController.jumpToPage(1)),
          
        ],
      ),
    );
  }

  Widget _buildItemMenu(icone, texto, indice, VoidCallback onClick) {
    return Container(
      width: MediaQuery.of(context).size.width/9,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
        child: InkWell(
          child: Row(
            children: [
              Icon(icone,
                  color: menuAtivo[indice]
                      ? AppColors.primaria02
                      : AppColors.primaria01),
              SizedBox(width: 5),
              Text(texto,
                  style: menuAtivo[indice]
                      ? TextStyle(color: AppColors.primaria02)
                      : TextStyle(color: AppColors.primaria01))
            ],
          ),
          onHover: (value) {
            setState(() {
              menuAtivo[indice] = value;
            });
          },
          onTap: () {
            onClick();
          },
        ),
      ),
    );
  }

  

}
