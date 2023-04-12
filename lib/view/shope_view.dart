import 'package:appprova/model/shope.dart';
import 'package:flutter/material.dart';


//
// STATEFUL (stf+TAB)
//
class ShopeApp extends StatefulWidget {
  const ShopeApp({super.key});

  @override
  State<ShopeApp> createState() => _ShopeAppState();
}

class _ShopeAppState extends State<ShopeApp> {
  //Declaração dos Atributos
  List<Shope> list = [];
  var index;
  var txtName = TextEditingController();
  var txtPrice = TextEditingController();

  @override
  void initState() {
    index = -1;
    list.add(Shope('Rice', '8,80'));
    list.add(Shope('Apple', '0.80'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA DE TÍTULO
      appBar: AppBar(
        title: Text('Gerenciador de Compras'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal,
      //CORPO
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: adicionar(),
          ),
          Expanded(
            flex: 2,
            child: listar(),
          ),
        ],
      ),
      persistentFooterButtons: [
        Text('Total de compras: ${list.length.toString()}'),
      ],
    );
  }

  // ADD SHOPE
  adicionar() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.blueGrey.shade50,
        child: Column(
          children: [
            TextField(
              controller: txtName,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Nome da mercadoria',
                labelStyle: TextStyle(fontSize: 12),
                icon: Icon(Icons.production_quantity_limits),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: txtPrice,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Preço',
                labelStyle: TextStyle(fontSize: 12),
                icon: Icon(Icons.price_change),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //EVENTO DE PRESSIONAMENTO DO BOTÃO
                if (txtName.text.isNotEmpty && txtPrice.text.isNotEmpty) {
                  //ALTERAÇÃO DO ESTADO DA LISTA

                  if (index == -1) {
                    //Adicionar um novo contato
                    setState(() {
                      list.add(Shope(txtName.text, txtPrice.text));
                    });
                    mensagem(
                      'Mercadoria adicionada com sucesso.',
                      Colors.blueAccent.shade100,
                    );
                  } else {
                    //Alterar um contato existente
                    setState(() {
                      list[index] = Shope(
                        txtName.text,
                        txtPrice.text,
                      );
                      index = -1;
                    });
                    mensagem(
                      'Mercadoria alterada com sucesso.',
                      Colors.blueAccent.shade100,
                    );
                  }

                  txtName.clear();
                  txtPrice.clear();
                } else {
                  mensagem(
                    'Os campos nome e preço não podem ser vazios.',
                    Colors.redAccent.shade100,
                  );
                }
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  //LISTAR CONTATOS
  listar() {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.production_quantity_limits),
              title: Text(list[index].name),
              subtitle: Text(list[index].price),
              trailing: IconButton(
                icon: Icon(Icons.delete_outline),
                onPressed: () {
                  setState(() {
                    list.removeAt(index);
                  });
                  mensagem(
                    'Removed with success.',
                    Colors.blueAccent.shade100,
                  );
                },
              ),
              onTap: () {
                setState(() {
                  this.index = index;
                  txtName.text = list[index].name;
                  txtPrice.text = list[index].price;
                });
              },
              tileColor: (this.index == index)
                  ? Colors.blueAccent.shade100.withOpacity(0.2)
                  : Colors.white,
            ),
          );
        },
      ),
    );
  }

  //Exibir Mensagem
  mensagem(msg, cor) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        msg,
        //: TextAlign.center,
      ),
      duration: Duration(seconds: 2),
      backgroundColor: cor,
    ));
  }
}