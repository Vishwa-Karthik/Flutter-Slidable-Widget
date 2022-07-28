import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text("S L I D A B L E"),
        centerTitle: true,
      ),
      body: Center(
          child: Slidable(
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              flex: 2,
              onPressed: ((context) {
                // call phone
              }),
              icon: Icons.phone,
              backgroundColor: Colors.green,
            ),
            SlidableAction(
              onPressed: ((context) {
                // text phone
              }),
              icon: Icons.chat,
              backgroundColor: Colors.blue,
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: ((context) {
                // delete phone
              }),
              icon: Icons.delete_forever,
              backgroundColor: Colors.red,
            ),
          ],
        ),
        child: Container(
          color: Colors.deepPurple[300],
          child: const ListTile(
            title: Text(
              "Vishwa Karthik",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
            ),
            subtitle: Text(
              "GITHUB",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.person,
              size: 60,
            ),
          ),
        ),
      )),
    );
  }
}
