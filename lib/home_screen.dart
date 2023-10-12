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
            // search field
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
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
            //Card
            const SizedBox(height: 32),
            Image.network(
              "https://www.itau.com.br/media/dam/m/3671f420a6735d7e/original/itaucard-uniclass-mastercard-black-png.png",
            ),

            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Scan
                Column(
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Card(
                        child: Icon(Icons.qr_code_scanner,
                            color: Colors.blue.shade500),
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text("Scan"),
                  ],
                ),

                //Send & pay

                Column(
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Card(
                        child: Icon(Icons.send, color: Colors.blue.shade500),
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text("Sand & Pay"),
                  ],
                ),

                //Move Balance

                Column(
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Card(
                        child: Icon(Icons.control_camera,
                            color: Colors.blue.shade500),
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text("Move Balance"),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 32),
            const Text("In & Out"),
          ],
        ),
      ),
    );
  }
}
