import 'package:flutter/material.dart';

class SearchData extends SearchDelegate<String> {
  final mylist = [
    'abc',
    'bac',
    'cap',
    'dda',
    'eeh',
    'gkjdjh',
    'hlkfjfj',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    //// implement buildActions(buttons)

    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //  implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // implement buildResults
    return Center(
      child: Container(
        height: 100,
        width: 100,
        child: Card(
          color: Colors.pink,
              child: Center(
            child: Text(query)
            ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // implement buildSuggestions
    @override
    final suggestionList = query.isEmpty ? ['no recents',] : mylist.where((element) => element.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: (){
          showResults(context);
        },
        leading: Icon(Icons.attachment),
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0,query.length),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold, ),
             children: [
               TextSpan(
                 text: suggestionList[index].substring(query.length),
                 style: TextStyle( 
                   color:Colors.grey
                 ),
               )
             ], 
          )
          ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
