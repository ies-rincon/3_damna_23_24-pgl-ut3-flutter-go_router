import 'package:flutter/material.dart';

/// Displays detailed information about a PageItem.
class PageItemDetailsView extends StatelessWidget {
  final String info;
  const PageItemDetailsView({super.key, this.info = "No info"});

  static const routeName = 'page_item';
  static const routePath = '/page_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Item Details'),
      ),
      body: Center(
        child: Text('Information Here: from $info'),
      ),
    );
  }
}
