import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'DOG PROFILE',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        ],
        leading: IconButton(
          color: Colors.pink,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.0,
        brightness: Brightness.dark,
      ),
      body: Stack(
        children: [
          Container(
            height: 270,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://uploads.metamorphosis.com/wp-content/uploads/sites/2/2020/01/shutterstock_1268241238-2-768x512.jpg'),
              ),
            ),
          ),
          FractionalTranslation(
            translation: Offset(5.5, 4.2),
            child: FloatingActionButton(
              heroTag: 'btn1',
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Icon(Icons.arrow_upward),
              backgroundColor: Colors.pink,
              onPressed: () {},
            ),
          ),
          // Text('Hello'),
          Container(
            child: AspectRatio(
              aspectRatio: 25 / 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right: 200, left: 0),
                    child: Text(
                      'Dog Details',
                      style: TextStyle(
                          color: Colors.pink,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Text('Name'),
                    title: SizedBox(
                      width: 20,
                      child: Container(
                        margin: const EdgeInsets.only(right: 50, left: 50),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text('Bread'),
                    title: SizedBox(
                      width: 20,
                      child: Container(
                        margin: const EdgeInsets.only(right: 50, left: 50),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text('Gender'),
                    title: SizedBox(
                      width: 20,
                      child: Container(
                        margin: const EdgeInsets.only(right: 50, left: 50),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text('Age'),
                    title: SizedBox(
                      width: 20,
                      child: Container(
                        margin: const EdgeInsets.only(right: 50, left: 60),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text('Vaccinated'),
                    title: SizedBox(
                      width: 20,
                      child: Container(
                        margin: const EdgeInsets.only(right: 50, left: 30),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text('Dog Size'),
                    title: SizedBox(
                      width: 20,
                      child: Container(
                        margin: const EdgeInsets.only(right: 50, left: 50),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text('About'),
                    title: SizedBox(
                      width: 20,
                      child: Container(
                        margin: const EdgeInsets.only(right: 50, left: 60),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.home_outlined),
                        onPressed: () {},
                        color: Colors.pink,
                        iconSize: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 250,
                        child: FloatingActionButton.extended(
                          backgroundColor: Colors.pink,
                          label: Text('Save & Next'),
                          heroTag: 'btn2',
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        icon: Icon(Icons.person_rounded),
                        onPressed: () {},
                        color: Colors.pink,
                        iconSize: 30,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
