import 'package:flutter/material.dart';

class CarItem {
  final String title;
  final String subtitle;
  final String url;
  CarItem({required this.title, required this.subtitle, required this.url});
}
class MySliverList extends StatelessWidget {
  const MySliverList({super.key});
  @override
  Widget build(BuildContext context) {
    final List<CarItem> carItems = [
      CarItem(
          title: '911 Cabriolet',
          subtitle: '911 Carrera Cabriolet Porsche',
          url: 'https://oreil.ly/m3OXC'),
      CarItem(
          title: '718 Spyder',
          subtitle: '718 Spyder Porsche',
          url: 'https://oreil.ly/hca-6'),
      CarItem(
          title: '718 Boxster T',
          subtitle: '718 Boxster T Porsche',
          url: 'https://oreil.ly/Ws4EX'),
      CarItem(
          title: 'Cayenne',
          subtitle: 'Cayenne S Porsche',
          url: 'https://oreil.ly/gwvnL'),
      CarItem(
          title: '911 Cabriolet',
          subtitle: '911 Carrera Cabriolet Porsche',
          url: 'https://oreil.ly/m3OXC'),
      CarItem(
          title: '718 Spyder',
          subtitle: '718 Spyder Porsche',
          url: 'https://oreil.ly/hca-6'),
      CarItem(
          title: '718 Boxster T',
          subtitle: '718 Boxster T Porsche',
          url: 'https://oreil.ly/Ws4EX'),
      CarItem(
          title: 'Cayenne',
          subtitle: 'Cayenne S Porsche',
          url: 'https://oreil.ly/gwvnL'),
      CarItem(
          title: '911 Cabriolet',
          subtitle: '911 Carrera Cabriolet Porsche',
          url: 'https://oreil.ly/m3OXC'),
      CarItem(
          title: '718 Spyder',
          subtitle: '718 Spyder Porsche',
          url: 'https://oreil.ly/hca-6'),
      CarItem(
          title: '718 Boxster T',
          subtitle: '718 Boxster T Porsche',
          url: 'https://oreil.ly/Ws4EX'),
      CarItem(
          title: 'Cayenne',
          subtitle: 'Cayenne S Porsche',
          url: 'https://oreil.ly/gwvnL'),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text('MyAwesome App'),
            expandedHeight: 300,
            collapsedHeight: 150,
            floating: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(carItems[index].url)),
                  title: Text(carItems[index].title),
                  subtitle: Text(carItems[index].subtitle),
                );
              },
              childCount: carItems.length,
            ),
          ),
        ],
      ),
    );
  }
}