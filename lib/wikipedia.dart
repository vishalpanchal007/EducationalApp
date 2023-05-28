import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WikipediaScreen extends StatefulWidget {
  const WikipediaScreen({Key? key}) : super(key: key);

  @override
  State<WikipediaScreen> createState() => _WikipediaScreenState();
}

class _WikipediaScreenState extends State<WikipediaScreen> {
  void _lunchURL(String urlScheme) async {
    var url = Uri.parse(urlScheme);
    if (!await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [Image.asset('assets/wikipedia_logo.png')],
        centerTitle: true,
        title: Text(
          'Wikipedia',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wikipedia',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: 8),
              Text(
                'Summary text goes here....',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Image.asset(
                'assets/wiki.png',
                fit: BoxFit.cover,
                height: 200,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(height: 16),
              Text(
                'Heading 1',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Content paragraph1...',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Heading 2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Content paragraph 2....',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'External Links',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              InkWell(
                onTap: () {
                  _lunchURL('https://en.wikipedia.org/wiki/Infosys');
                },
                child: Text(
                  'External Link 1',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: 8),
              InkWell(
                onTap: () {
                  _lunchURL('https://en.wikipedia.org/wiki/IBM');
                },
                child: Text(
                  'External Link 2',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}