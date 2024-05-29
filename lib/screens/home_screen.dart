import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            //padding: const EdgeInsets.all(8),
            itemCount: 10, // max items to list
            itemBuilder: (BuildContext context, int index) {
              return myCard(index);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Button 1'),
          ),
        ),
      ],
    );
  }

  ///each card for listview
  Card myCard(int index) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Icon(Icons.account_circle, size: 50),
        title: Text('card $index'),
        subtitle: Text('Subtitle for card $index'),
      ),
    );
  }
}
