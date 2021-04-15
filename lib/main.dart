import 'package:assignment_1/SecondScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              IconButton(
                visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.pink[300],
                ),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.message_rounded,
                  color: Colors.pink[300],
                ),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.pink[300],
                ),
                onPressed: null,
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'PROFILE',
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
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '   Hi,',
                      style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Flexible(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    elevation: 0,
                    color: Colors.pink,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondScreen()));
                      },
                      child: SizedBox(
                        width: 300,
                        height: 310,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                              child: FractionalTranslation(
                                translation: Offset(0.0, -0.5),
                                child: CircleAvatar(
                                  radius: 70,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://uploads.metamorphosis.com/wp-content/uploads/sites/2/2020/01/shutterstock_1268241238-2-768x512.jpg"), //NetworkImage
                                    radius: 70,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Duke',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'PUG',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '5 Years old',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.green,
                              child: Icon(Icons.check),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Vaccinated',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '(1 month ago)',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.pink,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'About Me',
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'If you are looking for a loving, \neasy going pal, I am your boy',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://uploads.metamorphosis.com/wp-content/uploads/sites/2/2020/01/shutterstock_1268241238-2-768x512.jpg"), //NetworkImage
                radius: 50,
              ),
              Text(
                'Abhinav',
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Owner',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: FloatingActionButton.extended(
                  heroTag: "btn1",
                  onPressed: () {},
                  label: Text('Find a match'),
                  backgroundColor: Colors.pink,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: FloatingActionButton.extended(
                  heroTag: "btn2",
                  onPressed: () {},
                  label: Text('Found a match'),
                  backgroundColor: Colors.pink,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        // ],
        // ),
      ),
    );
    // );
  }
}
