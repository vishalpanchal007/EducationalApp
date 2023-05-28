import 'package:educational_websitesapp/htmlscreen.dart';
import 'package:flutter/material.dart';



class W3schoolScreen extends StatefulWidget {
  const W3schoolScreen({Key? key}) : super(key: key);

  @override
  State<W3schoolScreen> createState() => _W3schoolScreenState();
}

class _W3schoolScreenState extends State<W3schoolScreen> {
  void navigateToTutorial(BuildContext context, String tutorialName) {
    switch (tutorialName) {
      case 'HTML':
        Navigator.pushNamed(context, '/html');
        break;
      case 'CSS':
        Navigator.pushNamed(context, '/css');
        break;
      case 'JavaScript':
        Navigator.pushNamed(context, '/javascript');
        break;
      case 'Python':
        Navigator.pushNamed(context, '/python');
        break;
      default:
        print('Invalid tutorial name: $tutorialName');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text('W3Schools'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HtmlTutorialScreen()));
              },
              child: Text('HTML Tutorial'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CssTutorialScreen()));
              },
              child: Text('CSS Tutorial'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => JavaScriptTutorialScreen()));
              },
              child: Text('JavaScript Tutorial'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PythonTutorialScreen()));
              },
              child: Text('Python Tutorial'),
            ),
          ],
        ),
      ),
    );
  }
}

class CssTutorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CSS Tutorial'),
      ),
      body: Center(
        child: Text('CSS Tutorial Screen'),
      ),
    );
  }
}

class JavaScriptTutorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JavaScript Tutorial'),
      ),
      body: Center(
        child: Text('JavaScript Tutorial Screen'),
      ),
    );
  }
}

class PythonTutorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Python Tutorial'),
      ),
      body: Center(
        child: Text('Python Tutorial Screen'),
      ),
    );
  }
}