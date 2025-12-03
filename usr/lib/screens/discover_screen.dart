import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.primaries[index % Colors.primaries.length],
                child: Text('U$index'),
              ),
              title: Text('User $index'),
              subtitle: Text('Speaks: English • Learning: Spanish'),
              trailing: IconButton(
                icon: const Icon(Icons.person_add_outlined),
                onPressed: () {},
              ),
            ),
          );
        },
      ),
    );
  }
}
