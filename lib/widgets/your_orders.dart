import 'package:flutter/material.dart';

class YourOrders extends StatelessWidget {
  const YourOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("Name"),
              // trailing: Text("Order Status")
              trailing: Container(
                width: 100,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.check_circle_rounded,
                        size: 32,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.close_outlined,
                          size: 32,
                        ))
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
