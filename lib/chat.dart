import 'package:flutter/material.dart';
import 'chat_detail.dart';

class ChatHistory extends StatelessWidget {
  const ChatHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat History',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const Text(
            'Recent Chats',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          chatItem(context, 'Ali', 'Hello! How are you?'),
          chatItem(context, 'Ahmed', 'See you tomorrow!'),
          chatItem(context, 'Sara', 'Thank you so much!'),
          chatItem(context, 'Ayesha', 'Good morning!'),
          chatItem(context, 'Usman', 'Okay, see you!'),
        ],
      ),
    );
  }

  Widget chatItem(
    BuildContext context,
    String name,
    String message,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),

      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),

        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Text(message),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
        ),

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatDetail(name: name),
            ),
          );
        },
      ),
    );
  }
}