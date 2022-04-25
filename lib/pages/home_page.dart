// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mentalhealthapp/util/exercise_tile.dart';
import 'package:mentalhealthapp/util/moods.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //Greetings Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi Beyza!
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Beyza!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "25 April, 2022",
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          ),
                        ],
                      ),
                      //Notifications
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //How do you feel?

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //Emotions
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: [
                          Moods(
                            emoticonFace: "😔",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Bad",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      //fine

                      Column(
                        children: [
                          Moods(
                            emoticonFace: "🙂",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Fine",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      //well

                      Column(
                        children: [
                          Moods(
                            emoticonFace: "😊",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Well",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      //excellent

                      Column(
                        children: [
                          Moods(
                            emoticonFace: "🥳",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Excellent",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      //Exercise Heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exercises",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      //ListView of Exercises
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                                icon: Icons.favorite,
                                exerciseName: "Speaking Skills",
                                numberOfExercise: 16,
                                color: Colors.orange),
                            ExerciseTile(
                              icon: Icons.person,
                              exerciseName: "Reading Skills",
                              numberOfExercise: 20,
                              color: Colors.pink,
                            ),
                            ExerciseTile(
                              icon: Icons.star,
                              exerciseName: "Writing Skills",
                              numberOfExercise: 8,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
