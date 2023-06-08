import 'package:flutter/material.dart';
class MenuCard extends StatelessWidget {
  final String title;
  final String image;

  const MenuCard({super.key, 
    required this.title,
    required this.image
  });
  @override
  Widget build(BuildContext context) {
    // creates the menu card with title and image
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        width: MediaQuery.of(context).size.width - 70,
        height: 110,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover, // -> 02
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      title,
                      style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),
                      
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
