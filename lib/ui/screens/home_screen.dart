import 'package:flutter/material.dart';
import 'package:corporate_ai_assistant/ui/screens/chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Corporate AI Assistant'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Text('BÜ', style: TextStyle(color: Colors.indigo)),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Knowledge Base',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Select a document to start chatting or upload a new one.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  _DocumentCard(
                    title: 'Q3_Financial_Report.pdf',
                    date: 'Uploaded 2 hours ago',
                    icon: Icons.pie_chart,
                  ),
                  _DocumentCard(
                    title: 'HR_Employee_Handbook_2026.pdf',
                    date: 'Uploaded yesterday',
                    icon: Icons.book,
                  ),
                  _DocumentCard(
                    title: 'Project_Liva_Specs_v2.pdf',
                    date: 'Uploaded last week',
                    icon: Icons.rocket_launch,
                  ),
                  _DocumentCard(
                    title: 'Technical_Architecture_Diagrams.pdf',
                    date: 'Uploaded 2 weeks ago',
                    icon: Icons.architecture,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigate to Chat Screen
           Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatScreen()),
          );
        },
        label: const Text('New Chat'),
        icon: const Icon(Icons.chat_bubble_outline),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}

class _DocumentCard extends StatelessWidget {
  final String title;
  final String date;
  final IconData icon;

  const _DocumentCard({
    required this.title,
    required this.date,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.indigo.shade50,
          child: Icon(icon, color: Colors.indigo),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(date),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        onTap: () {},
      ),
    );
  }
}
