import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BlogDetail extends StatefulWidget {
  final String blogLink;

  BlogDetail({required this.blogLink});

  @override
  _BlogDetailState createState() => _BlogDetailState();
}

class _BlogDetailState extends State<BlogDetail> {
  String _title = '';
  String _content = '';

  @override
  void initState() {
    super.initState();
    fetchBlogData();
  }

  Future<void> fetchBlogData() async {
    // Replace with your API endpoint
    final response = await http.get(Uri.parse('https://your-api.com/blogs/${widget.blogLink}'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _title = data['title'];
        _content = data['content'];
      });
    } else {
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(_content),
      ),
    );
  }
}