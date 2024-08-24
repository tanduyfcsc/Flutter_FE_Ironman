import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List recommendedMovies = [
    "images/ironman3.jpg",
    "images/ironman2.jpg",
    "images/ironman1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 8,),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 4,
                              blurRadius: 6
                            ),
                          ],
                        ),
                        child: Icon(Icons.favorite, color: Colors.redAccent,),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Center(
                      child: Image.asset(
                        "images/iron-man.png",
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height / 2.2,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Ironman",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Text(
                        "Tony Stark",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "images/logo.png",
                    width: 140,
                    height: 80,
                  ),
                ],
              ),
              Divider(
              ),
              Text(
                "When Tony Stark, an industrialist, is captured, he constructs a high-tech armoured suit to escape. "
                    "Once he manages to escape, he decides to use his suit to fight against evil forces to save the world.",
                style: TextStyle(
                  color: Colors.black54
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
