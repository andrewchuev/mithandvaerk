import 'package:flutter/material.dart';
import 'package:mithandvaerk/shared/styles.dart';
import 'package:mithandvaerk/widgets/inputs.dart';

class ProductsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.notifications),
        ],
        title: searchInput(),
      ),

    );
  }
}
