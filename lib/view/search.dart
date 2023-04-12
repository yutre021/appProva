import 'package:flutter/material.dart';

import '../model/userAge.dart';

class SearchApp extends StatefulWidget {
  const SearchApp({Key? key}) : super(key: key);

  @override
  State<SearchApp> createState() => _SearchAppState();
}

class _SearchAppState extends State<SearchApp> {

  List<UserAdd> _allUsers = [];
  List<UserAdd>_foundUsers =[];
  var index;
  var txtID = TextEditingController();
  var txtName = TextEditingController();
  var txtAge = TextEditingController();
  @override
  void initState() {
    index = -1;
    _allUsers.add(UserAdd(1, "Andy",29));
    _allUsers.add(UserAdd(2, "Barbara",30));
    _allUsers.add(UserAdd(3, "Cristina",50));
    _allUsers.add(UserAdd(4, "Andre",50));
    _allUsers.add(UserAdd(5, "Andre Correia",40));
    _allUsers.add(UserAdd(6, "Bia Cintia",19));
    super.initState();
  }





  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<UserAdd> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((users) =>
          users.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }
    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Bar'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex:1, child: add(),
              
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundUsers[index].id),
                  color: Colors.teal.shade100,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Text(
                      _foundUsers[index].id.toString(),
                      style: const TextStyle(fontSize: 24),
                    ),
                    title: Text(_foundUsers[index].name),
                    subtitle: Text(
                        '${_foundUsers[index].age.toString()} years old'),
                    trailing:  IconButton(
                      icon: Icon(Icons.delete_outline),
                      onPressed: () {
                        setState(() {
                          _allUsers.removeAt(index);
                        });
                        message(
                          'Removed with success.',
                          Colors.blueAccent.shade100,
                        );
                      },
                    ),
                    onTap: () {
                      setState(() {
                        this.index = index;
                        txtID.text = (_allUsers[index].id).toString();
                        txtName.text = _allUsers[index].name;
                        txtAge.text = (_allUsers[index].age).toString();
                        //txtAge.text = toString( _allUsers[index].age);
                      });
                    },
                  ),
                ),
              )
                  : const Text(
                'No results found',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
  add() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.blueGrey.shade50,
        child: Column(
          children: [
            TextField(
              controller: txtID,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'ID user',
                labelStyle: TextStyle(fontSize: 12),
                icon: Icon(Icons.verified),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: txtName,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Name user',
                labelStyle: TextStyle(fontSize: 12),
                icon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: txtAge,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Age',
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
                if (txtName.text.isNotEmpty && txtAge.text.isNotEmpty && txtID.text.isNotEmpty) {
                  //ALTERAÇÃO DO ESTADO DA LISTA

                  if (index == -1) {
                    //Adicionar um novo contato
                    setState(() {
                      _allUsers.add(UserAdd(int.parse(txtID.text),txtName.text, int.parse(txtAge.text)));
                    });
                    message(
                      'User add.',
                      Colors.blueAccent.shade100,
                    );
                  } else {
                    //Alterar um contato existente
                    setState(() {
                      _allUsers[index] = UserAdd(
                        int.parse(txtID.text),
                        txtName.text,
                        int.parse(txtAge.text),
                      );
                      index = -1;
                    });
                    message(
                      'User altered.',
                      Colors.blueAccent.shade100,
                    );
                  }
                  txtID.clear();
                  txtName.clear();
                  txtAge.clear();
                } else {
                  message(
                    'Can not be Empity',
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
  message(msg, cor) {
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

