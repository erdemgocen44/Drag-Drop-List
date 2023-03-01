import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of tilesss
  final List myTiles = [
    'Aliquam tincidunt mauris eu risus.',
    'Vestibulum auctor dapibus neque.',
    'Nunc dignissim risus id metus.',
    'Cras ornare tristique elit.',
    'Vivamus vestibulum ntulla nec ante.'
  ];

  //reorder method
  void updateMyTiles(int oldIndex, int newIndex) {
    setState(() {
//an adjusment is needed when moving the tile
      if (oldIndex < newIndex) {
        newIndex--;
      }

      //get te tilie
      final tile = myTiles.removeAt(oldIndex);

      //plaec the tile in the new positions

      myTiles.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drag et Drop List'),
      ),
      body: ReorderableListView(
        children: [
          for (final tile in myTiles)
            ListTile(
              key: ValueKey(tile),
              title: Text(tile),
            )
        ],
        onReorder: (oldIndex, newIndex) => () {},
      ),
    );
  }
}
