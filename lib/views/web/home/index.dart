import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';
import 'package:sinteu/views/web/pagina_inicial/index.dart';
import 'package:sinteu/views/web/sobre/index.dart';

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
        preferredSize: Size(screenSize.width, 200),
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
          SobrePage(), //1
        ],
      ),
    );
  }

  Widget _buildAreaLogo(largura) {
    return Container(
      color: AppColors.primaria02,
      height: 120,
      width: largura,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 10, 0),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.jpeg'))),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SINTEU', style: TextStyle(fontSize: 40)),
              Text(
                'Sistema de Integração entre Empresas e Universidades',
                style: TextStyle(fontSize: 32),
              )
            ],
          ),
          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage('assets/images/logo.jpeg'))),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_downward_outlined))
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
              Icons.add, 'Cadastros', 1, () => _pageController.jumpToPage(0)),
          _buildItemMenu(
              Icons.search, 'Buscas', 2, () => _pageController.jumpToPage(0)),
          _buildItemMenu(Icons.notifications, 'Noticias', 3,
              () => _pageController.jumpToPage(0)),
          _buildItemMenu(
              Icons.group, 'Grupos', 4, () => _pageController.jumpToPage(0)),
          _buildItemMenu(Icons.favorite, 'Vitrine', 5,
              () => _pageController.jumpToPage(0)),
          _buildItemMenu(Icons.notifications, 'Notificações', 6,
              () => _pageController.jumpToPage(0)),
          _buildItemMenu(Icons.contact_page, 'Contato', 7,
              () => _pageController.jumpToPage(0)),
          _buildItemMenu(
              Icons.info, 'Sobre', 8, () => _pageController.jumpToPage(1))
        ],
      ),
    );
  }

  Widget _buildItemMenu(icone, texto, indice, VoidCallback onClick) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
      child: InkWell(
        child: Row(
          children: [
            Icon(icone,
                color: menuAtivo[indice]
                    ? AppColors.itemComFoco
                    : AppColors.corFontePadrao),
            SizedBox(width: 5),
            Text(texto,
                style: menuAtivo[indice]
                    ? TextStyle(color: AppColors.itemComFoco)
                    : TextStyle(color: AppColors.corFontePadrao))
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
    );
  }
}
