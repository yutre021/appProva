// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:appprova/view/page_user_view.dart';
import 'package:appprova/view/search.dart';
import 'package:appprova/view/shope_view.dart';
import 'package:appprova/view/sobre_view.dart';
import 'package:flutter/material.dart';



class PrincipalView extends StatefulWidget {
  const PrincipalView({super.key});

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  //Índice da página que está sendo exibida
  var paginaAtual = 1;
  //Responsável pela alteração (navegação) entre as páginas
  var paginaControlador = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //CORPO
      backgroundColor: Colors.teal,
      body: PageView(
        controller: paginaControlador,
        children: [
          ShopeApp(),
          SearchApp(),
          PageUser(),
          SobreApp(),
        ],
        onPageChanged: (index) {
          setState(() {
            paginaAtual = index;
          });
        },
      ),
      //BARRA DE NAVEGAÇÃO
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey.shade50,
        selectedItemColor: Colors.blueAccent.shade700,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        //Página atual
        currentIndex: paginaAtual,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Pagina do Usuário',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Sobre',
          ),
        ],
        //TROCA DE PÁGINA
        onTap: (index) {
          setState(() {
            paginaAtual = index;
          });
          paginaControlador.animateToPage(
            index,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        },
      ),
    );
  }
}