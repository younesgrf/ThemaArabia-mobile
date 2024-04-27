import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  final List<Map<String, dynamic>> articles;

  const TableWidget({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: 20, // Espacement entre les colonnes
        columns: [
          DataColumn(label: Text('Id Article')),
          DataColumn(label: Text('User Name')),
          DataColumn(label: Text('Article title')),
          DataColumn(label: Text('Article Contenu')),
          DataColumn(label: Text('Category')),
          DataColumn(label: Text('Delete')),
        ],
        rows: articles.map((article) {
          return DataRow(
            cells: [
              DataCell(Text(article['id'].toString())),
              DataCell(Text(article['name'].toString())),
              DataCell(Text(article['title'].toString())),
              DataCell(Text(article['desc'].toString())),
              DataCell(Text(article['cat'].toString())),
              DataCell(IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  // Action à effectuer lors de la suppression de l'article
                  // Ici, vous pouvez appeler une fonction pour supprimer l'article
                },
              )),
            ],
          );
        }).toList(),
      ),
    );
  }
}
