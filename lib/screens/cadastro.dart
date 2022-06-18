import 'package:flutter/material.dart';


class Cadastro extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new"),
        actions: [
          TextButton(child: const Text('SALVAR',
            style: TextStyle(color: Colors.black87),
          ),
            onPressed: () => Navigator.pushNamed(context, '/lista'),
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget> [
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black87,
                padding: EdgeInsets.only(left: 16),
              ),
              onPressed: () => Navigator.pushReplacementNamed(context, '/lista'),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: const Text('My recipes'),),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black87,
                padding: EdgeInsets.only(left: 16),
              ),
              onPressed: () => Navigator.pushReplacementNamed(context, '/cadastro'),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: const Text('Add new'),),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black87,
                padding: EdgeInsets.only(left: 16),
              ),
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: const Text('Logout'),),
            ),
          ],
        ),
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only( left: 16, right: 16, top: 4),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: UnderlineInputBorder(), //p fazer a caixinha é outlineinputborder
                label: Text('Recipe name'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only( left: 16, right: 16, top: 4),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(), //p fazer a caixinha é outlineinputborder
                label: Text('Recipe description'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only( left: 16, right: 16, top: 4),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(), //p fazer a caixinha é outlineinputborder
                label: Text('Ingredients'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only( left: 16, right: 16, top: 4),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(), //p fazer a caixinha é outlineinputborder
                label: Text('Instructions'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}