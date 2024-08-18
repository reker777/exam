import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FlowersPage extends StatefulWidget {
  const FlowersPage({super.key});

  @override
  State<FlowersPage> createState() => _FlowersPageState();
}

class _FlowersPageState extends State<FlowersPage> {
    final List<String> _messages = [];
  final TextEditingController _controller = TextEditingController();
    List<String> nameList = ["Exam2"];
  List <Widget> widgetList = const [
   
  ];

  void _handleSubmitted(String text) {
    if (text.isNotEmpty) {
      setState(() {
        _messages.add(text);
        _controller.clear();
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Veniro Pinto",
        style:TextStyle(color: Colors.black,
        fontSize: 30
        )
        ),
      
      ),
      body:Column(
        children:  [
          Icon(Icons.search),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
              onSubmitted: _handleSubmitted,
            ),
            
             Container(
            height: 90,
            width: 100,
           color: Colors.purple,
           margin:EdgeInsets.all(20),
           
          ),
          Container(
            height: 90,
            width: 100,
            color: Colors.yellow,
            margin:EdgeInsets.all(20) ,
          ),
          Icon(Icons.shop)
        ],
      ),
    );
  }
}
class Welcome {
    int id;
    String name;
    String price;
    String description;
    String image;

    Welcome({
        required this.id,
        required this.name,
        required this.price,
        required this.description,
        required this.image,
    });

}
