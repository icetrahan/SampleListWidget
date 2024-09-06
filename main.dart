import 'package:flutter/material.dart';

class SampleListDisplay extends StatelessWidget {
  final List<String> items;

  SampleListDisplay({required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample List Widget'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.label),
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SampleListDisplay(items: ['Item 1', 'Item 2', 'Item 3']),
  ));
}
