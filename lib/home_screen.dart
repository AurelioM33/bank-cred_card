import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: Colors.grey.shade300,
          radius: 16,
          child: const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ),
        title: const Text(
          "VISHAL",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.credit_card),
            label: const Text("Basic"),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.blue.shade500),
                foregroundColor: MaterialStateProperty.all(Colors.white)),
          ),
          const SizedBox(
            width: 24,
          ),
          const Icon(Icons.notifications),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: const Column(
        children: [
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search), hintText: "Search"),
          )
        ],
      ),
    );
  }
}
