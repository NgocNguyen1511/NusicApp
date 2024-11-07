import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.grey[500], // Sử dụng màu xám đậm để phân biệt với văn bản
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.white), // Màu văn bản
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search...',
          hintStyle: TextStyle(color: Colors.white70), // Màu của hint text
          prefixIcon: Icon(Icons.search, color: Colors.white),
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        ),
      ),
    );
  }
}
