import 'package:flutter/material.dart';
import '../pages/applications.dart';


class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.grey[200],
        title: SafeArea(
          child: Container(
            width: double.infinity,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: TextField(
                readOnly: true,
                onTap: () {
                  showSearch(
                      context: context,
                      delegate: MySearchDelegate(),
                  );
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.grey[700]),
                    hintText: 'Search...',
                    border: InputBorder.none
                ),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Applications()));
              },
              icon: const Icon(Icons.edit)
          ),
        ],
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'Search Item 1',
    'Search Item 2',
    'Search Item 3',
    'Search Item 4',
    'Search Item 5',
  ];

  @override
  Widget? buildLeading(BuildContext context) =>
      IconButton(
          onPressed: () => close(context, null), //close search
          icon: const Icon(Icons.arrow_back, color: Colors.black)
      );

  @override
  List<Widget>? buildActions(BuildContext context) =>
      [
        IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: const Icon(Icons.clear),
        )
      ];

  @override
  Widget buildResults(BuildContext context) => Center(
    child: Text(
      query,
      style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
    )
  );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;

            showResults(context);
          },
        );
      },
    );
  }
}
