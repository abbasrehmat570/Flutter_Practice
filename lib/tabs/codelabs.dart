import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class CodeLabs extends StatefulWidget {
  const CodeLabs({Key? key}) : super(key: key);

  @override
  State<CodeLabs> createState() => _CodeLabsState();
}

// suggest means the all words from the package
// saved is our local array which stores the only favourite
// already saved  => check the saved array for every word for its presence

class _CodeLabsState extends State<CodeLabs> {
  final _suggest = <WordPair>[];
  final saved = <WordPair>{};
  final biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.only(right: 20),
          alignment: Alignment.topRight,
            child: Icon(Icons.menu,
            color: Colors.amberAccent,
            )),
        Text("Lists"),
        Container(
          height: 200,
          child: RandomWords(),
        ),
      ],
    );
  }

  Widget RandomWords() {
    return ListView.builder(
        padding: EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int i) {
          if (i.isOdd) {
            return Divider();
          }
          final int index = i ~/ 2;
          if (index >= _suggest.length) {
            _suggest.addAll(generateWordPairs().take(10));
          }
          return buildRow(_suggest[index]);
        });
  }

  Widget buildRow(WordPair wordPair) {
    final alreadySaved = saved.contains(wordPair);
    return ListTile(
      title: Text(wordPair.asPascalCase),
      trailing:
      Icon(alreadySaved ? Icons.favorite : Icons.favorite_border_outlined,
        color: alreadySaved ? Colors.red : null,
        semanticLabel: alreadySaved ? "Remove " : "Save",
      ),
      onTap: (){
        setState(() {
          if(alreadySaved){
            saved.remove(wordPair);
          }else{
            saved.add(wordPair);
          }

        });
      },
    );
  }
}
