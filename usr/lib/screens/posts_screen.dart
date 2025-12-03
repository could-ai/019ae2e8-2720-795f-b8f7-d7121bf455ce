import 'package:flutter/material.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Feed'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.primaries[index % Colors.primaries.length],
                    child: Text('P$index'),
                  ),
                  title: Text('User $index'),
                  subtitle: const Text('2 hours ago'),
                ),
                Container(
                  height: 200,
                  color: Colors.grey[300],
                  child: const Center(child: Icon(Icons.image, size: 50, color: Colors.grey)),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'This is a sample post content for the GlobalConnect feed. Learning new languages is fun! #LanguageLearning #GlobalConnect',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                ButtonBar(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                      label: const Text('Like'),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_outlined),
                      label: const Text('Comment'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
