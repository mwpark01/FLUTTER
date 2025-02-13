import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListDataItems {
  final List<String> monthItems = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    final ListDataItems item = ListDataItems();

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: item.monthItems.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(item.monthItems[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MyDetails(item.monthItems[index])));
              });
        },
        itemExtent: 50,
      ),
    );
  }
}

class MyDetails extends StatelessWidget {
  final String month;
  const MyDetails(this.month, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(month),
      ),
      body: Center(
        child: Text('This is the details page for $month'),
      ),
    );
  }
}