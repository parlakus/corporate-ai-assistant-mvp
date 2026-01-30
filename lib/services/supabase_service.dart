import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final SupabaseClient _client = Supabase.instance.client;

  // Fetch relevant documents using vector similarity search (RPC call)
  Future<List<dynamic>> searchDocuments(String queryEmbedding) async {
    try {
      final response = await _client.rpc('match_documents', params: {
        'query_embedding': queryEmbedding,
        'match_threshold': 0.78,
        'match_count': 5,
      });

      return response as List<dynamic>;
    } catch (e) {
      print('Supabase Vector Search Error: $e');
      return [];
    }
  }

  // Upload PDF file to storage bucket
  Future<String?> uploadFile(String path, String fileName) async {
    try {
      // Storage logic placeholder
      return "https://storage.supabase.co/bucket/$fileName"; 
    } catch (e) {
      return null;
    }
  }
}
