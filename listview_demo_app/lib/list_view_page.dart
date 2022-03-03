import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var listItems = [
    ListTile(
      title: Text('Birinci Öğe'),
      tileColor: Colors.amberAccent,
    ),
    ListTile(
      title: Text('İkinci Öğe'),
      tileColor: Colors.pinkAccent,
    ),
    ListTile(
      title: Text('Üçüncü Öğe'),
      tileColor: Colors.greenAccent,
    ),
  ];

  List<String> names = [
    'Ali',
    'Metin',
    'Feyyaz',
    'Rıza',
    'Ali',
    'Metin',
    'Feyyaz',
    'Rıza',
    'Ali',
    'Metin',
    'Feyyaz',
    'Rıza',
    'Ali',
    'Metin',
    'Feyyaz',
    'Rıza',
    'Ali',
    'Metin',
    'Feyyaz',
    'Rıza',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.8,
        heightFactor: 0.3,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, _) {
            return const VerticalDivider(
              width: 5,
              color: Colors.pinkAccent,
            );
          },
          itemCount: names.length,
          itemBuilder: (context, index) {
            var containers = names
                .map((name) => Container(
                  height: 100,
                  width: 100,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellowAccent,
                    child: Text(name)))
                .toList();
            return containers[index];
          },
        ),
      ),
    );
  }
}
