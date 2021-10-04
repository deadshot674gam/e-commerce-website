import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePageApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePageApp extends StatefulWidget {
  const HomePageApp({Key? key}) : super(key: key);

  @override
  _HomePageAppState createState() => _HomePageAppState();
}

class _HomePageAppState extends State<HomePageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            "E-Commerce Website",
            style: TextStyle(
                color: Colors.deepPurple[900],
                fontSize: 40.0,
                fontFamily: "Lato",
                fontWeight: FontWeight.w300),
          ),
          backgroundColor: Colors.white,
          actions: [
            Padding(
                padding: const EdgeInsets.all(5),
                child: TextButton(
                  child: Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.deepPurple[900],
                        fontFamily: "SourceSansPro",
                        fontWeight: FontWeight.w300),
                  ),
                  onPressed: () {},
                )),
            Padding(
                padding: const EdgeInsets.all(5),
                child: TextButton(
                  child: Text(
                    "About Us",
                    style: TextStyle(
                        color: Colors.deepPurple[900],
                        fontFamily: "SourceSansPro",
                        fontWeight: FontWeight.w300),
                  ),
                  onPressed: () {},
                )),
            Padding(
                padding: const EdgeInsets.all(5),
                child: TextButton(
                  child: Text(
                    "Catalogs",
                    style: TextStyle(
                        color: Colors.deepPurple[900],
                        fontFamily: "SourceSansPro",
                        fontWeight: FontWeight.w300),
                  ),
                  onPressed: () {},
                )),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextButton(
                child: Text(
                  "Your Cart",
                  style: TextStyle(
                      color: Colors.deepPurple[900],
                      fontFamily: "SourceSansPro",
                      fontWeight: FontWeight.w300),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(5),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple[500]),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "SourceSansPro",
                        fontWeight: FontWeight.w300),
                  ),
                  onPressed: () {},
                )),
            Container(
              width: 10.0,
            ),
            Padding(
                padding: const EdgeInsets.all(5),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple[500]),
                  child: const Text(
                    "Signup",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "SourceSansPro",
                        fontWeight: FontWeight.w300),
                  ),
                  onPressed: () {},
                )),
            Container(
              width: 10.0,
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              ImageSlideshow(
                  isLoop: true,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  children: [
                    Image(image: AssetImage("images/slider1.jpg")),
                    Image(image: AssetImage("images/slider2.jpg")),
                    Image(image: AssetImage("images/slider3.jpg")),
                    Image(image: AssetImage("images/slider4.jpg")),
                    Image(image: AssetImage("images/slider5.jpg")),
                    Image(image: AssetImage("images/slider6.jpg"))
                  ])
            ],
          ),
        ));
  }
}
