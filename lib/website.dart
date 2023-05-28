import 'package:educational_websitesapp/w3school.dart';
import 'package:educational_websitesapp/wikipedia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EducationHome extends StatefulWidget {
  const EducationHome({Key? key}) : super(key: key);

  @override
  State<EducationHome> createState() => _EducationHomeState();
}

class _EducationHomeState extends State<EducationHome> {
  final List<Platforms> platforms = [
    Platforms(
        name: 'Wikipedia',
        logo: 'assets/wikipedia_logo.png',
        designUI: WikipediaScreen()),
    Platforms(
        name: 'W3schools',
        logo: 'assets/w3schools_logo.png',
        designUI: W3schoolScreen()),
    Platforms(
        name: 'Wikipedia',
        logo: 'assets/tutorialspoint_logo.png',
        designUI: WikipediaScreen()),
    Platforms(
        name: 'Wikipedia',
        logo: 'assets/javatpoint_logo.png',
        designUI: WikipediaScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffadd8e6),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Futurehub',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Color(0xffff7f50)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search,
              color: Color(0xffff7f50),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffff7f50),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'BookMark'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: 'Library'),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Popular on App',
                style: TextStyle(
                    color: Color(0xffff7f50),
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 390,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/wikipedia_logo.png'),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Educational Apps',
                style: TextStyle(
                    color: Color(0xffff7f50),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              child: ListView.builder(
                itemCount: platforms.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final platform = platforms[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => platform.designUI));
                    },
                    child: Column(
                      children: [
                        Card(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            platforms[index].logo,
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Trend on App',
                style: TextStyle(
                    color: Color(0xffff7f50),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      width: 390,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffff7f50),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(platforms[index].logo),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Platforms {
  final String name;
  final String logo;
  final Widget designUI;

  Platforms({required this.name, required this.logo, required this.designUI});
}