import 'package:flutter/material.dart';
import 'package:myapplication/components/menucard.dart';
import 'package:myapplication/training.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Column(
        children: [
          GestureDetector(
            child: const MenuCard(
              title: 'Training',
              image: 'images/trainingimage.jpeg',
            ),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TrainingPage())),
              debugPrint("Training")
            },
          ),
          GestureDetector(
            child: const MenuCard(
              title: 'Performances',
              image: 'images/match.jpeg',
            ),
            onTap: () => {
              //       Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) =>  const Dashboard())
              // )
              debugPrint("Training")
            },
          ),
          GestureDetector(
            child: const MenuCard(
              title: 'Conditioning',
              image: 'images/running.jpeg',
            ),
            onTap: () => {
              //       Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) =>  const Dashboard())
              // )
              debugPrint("Training")
            },
          ),
          GestureDetector(
            child: const MenuCard(
              title: 'Schedule',
              image: 'images/calender.jpeg',
            ),
            onTap: () => {
              //       Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) =>  const Dashboard())
              // )
              debugPrint("Training")
            },
          ),
        ],
      ),
   
    );
  }
}
