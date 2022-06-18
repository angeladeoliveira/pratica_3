import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {

  ListView criarListView(){
    return ListView(

      children: <Widget> [
        ListTile(
          title: Text("Hamburger"),
          subtitle: Text("The best burger recipe for summertime grilling."),
          trailing: Image(
              image: NetworkImage('https://assets.unileversolutions.com/recipes-v2/230411.jpg')
          ),
          isThreeLine: true,
          onLongPress: () {},
        ),
        ListTile(
          title: Text("Pizza"),
          subtitle: Text("An easy pizza crust recipe that will hold all your favorite toppings."),
          trailing: Image(
              image: NetworkImage('https://diaonline.ig.com.br/wp-content/uploads/2019/03/pizzaria-em-brasilia.jpg')
          ),
          isThreeLine: true,
          onLongPress: () {},
        ),
        ListTile(
          title: Text("Caeser salad"),
          subtitle: Text("Your new favorite caesar salad, thanks to one secret ingredient."),
          trailing: Image(
              image: NetworkImage('https://www.marolacomcarambola.com.br/wp-content/uploads/2019/08/Receita-de-Salada-Caesar-Caesar-Salad-1.jpg')
          ),
          isThreeLine: true,
          onLongPress: () {},
        ),
        ListTile(
          title: Text("Homemade rocky road ice cream"),
          subtitle: Text("Homemade rocky road ice cream is summer in a bowl."),
          trailing: Image(
              image: NetworkImage('https://www.biggerbolderbaking.com/wp-content/uploads/2017/05/1C5A3137.jpg')
          ),
          isThreeLine: true,
          onLongPress: () {},
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My recipes"),
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

      body:
      criarListView() , floatingActionButton: FloatingActionButton(
      onPressed: () => Navigator.pushReplacementNamed(context, '/cadastro'),
      backgroundColor: Colors.blue,
      child: Icon(Icons.add),
    ),
    );
  }
}



