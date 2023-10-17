import 'package:flutter/material.dart';
import 'package:flutter_go_router/src/pages/page_profile.dart';
import 'package:go_router/go_router.dart';

import 'page_item.dart';
import 'page_item_details_view.dart';

/// List of Pages.
class PagesItemListView extends StatelessWidget {
  const PagesItemListView({
    super.key,
    this.items = const [PageItem(1), PageItem(2), PageItem(3)],
  });

  static const routeName = 'home';
  static const routePath = '/';

  final List<PageItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pages'),
      ),
      body: ListView.builder(
        restorationId: 'pageItemListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ListTile(
            title: Text('Page ${item.id}'),
            leading: const CircleAvatar(
              // Display the Flutter Logo image asset.
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            onTap: () => context.push(PageItemDetailsView.routePath,
                extra: item.id.toString()),
          );
        },
      ),
      // Botón en el footer
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.blue,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () =>
                      context.pushNamed(Profile.routeName, extra: "John Doe"),
                  child: const Text('Go to Profile with go router')),
            ],
          ),
        ),
      ),
    );
  }
}
