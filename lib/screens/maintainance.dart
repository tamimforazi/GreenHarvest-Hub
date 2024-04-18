import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:green_harvest_hub/models/maintainance_data.dart';

class Maintainance extends StatelessWidget {
  const Maintainance({super.key, required String name, required String image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: maintainance.length,
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
          crossAxisSpacing: 14,
          mainAxisSpacing: 14,
        ),
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // image: DecorationImage(
              // image: AssetImage(maintainance[index].image),
              // fit: BoxFit.cover,
              // ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  // child: Text(
                  //   // maintainance[index].name,
                  //   // style: const TextStyle(
                  //   //   color: Colors.white,
                  //   //   fontSize: 16,
                  //   // ),
                  // ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
