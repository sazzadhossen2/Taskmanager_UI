
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Taskpage extends StatelessWidget {
  const Taskpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sazzad Hossen"),
            Text("sazzadhossen@gmail.com"),
            Text("Daffodial international"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Cse",style: TextStyle(backgroundColor: Colors.green),),
                Wrap(
                  children: [
                    Icon(Icons.person),
                    Icon(Icons.delete),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
