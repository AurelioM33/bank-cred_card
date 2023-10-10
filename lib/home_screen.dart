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
              backgroundColor: MaterialStateProperty.all(Colors.blue.shade500),
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
          ),
          const SizedBox(width: 24),
          const Icon(Icons.notifications),
          const SizedBox(width: 24),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade200,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  /*border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.white),
                  ),*/
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
