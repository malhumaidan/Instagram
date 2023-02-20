import 'package:flutter/material.dart';

const String image =
    'https://ichef.bbci.co.uk/news/976/cpsprodpb/B7F6/production/_128049074_muskgetty.png';

class InstagramScreen extends StatefulWidget {
  const InstagramScreen({Key? key}) : super(key: key);

  @override
  State<InstagramScreen> createState() => _InstagramScreenState();
}

class _InstagramScreenState extends State<InstagramScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("instagram"),
      ),
      body: Column(
        children: [
          Container(
            // color: Colors.amber,
            height: 100,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(image),
                    radius: 35,
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade400,
            height: 1,
          ),
          SizedBox(
            height: 3,
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 8.0),
                  child: Image.network(image),
                ),
              ),
            ),
          ),
          BottomNavigationBar(
            backgroundColor: Colors.blue,
            selectedItemColor: Colors.amber,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                label: 'home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'post',
                icon: Icon(Icons.add),
              ),
              BottomNavigationBarItem(
                label: 'notification',
                icon: Icon(Icons.favorite),
              ),
              BottomNavigationBarItem(
                label: 'profile',
                icon: Icon(Icons.person),
              ),
            ],
          )
        ],
      ),
    );
  }
}
