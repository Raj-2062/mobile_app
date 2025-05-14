import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final VoidCallback onToggleTheme;

  const HomePage({super.key, required this.onToggleTheme});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> arrName = [
    "raj",
    "taj",
    "eva",
    "ayan",
    "tanzimul",
    "araf",
    "ayan",
    "tanzimul",
    "araf",
    "ayan",
    "tanzimul",
    "araf"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Center(child: Text("Home Page")),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: widget.onToggleTheme,
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/raj.jpg'),
            ),
            title: Text("My friend is ${arrName[index]}"),
            subtitle: const Text("Good human"),
            trailing: const Icon(Icons.accessibility_new_rounded),
          );
        },
        itemCount: arrName.length,
        separatorBuilder: (context, index) => const Divider(
          height: 20,
          thickness: 5,
        ),
      ),
    );
  }
}
