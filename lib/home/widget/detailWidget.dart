import 'package:flutter/material.dart';

class DetailItemScreen extends StatefulWidget {
  const DetailItemScreen({super.key});

  @override
  State<DetailItemScreen> createState() => _DetailItemScreenState();
}

class _DetailItemScreenState extends State<DetailItemScreen> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: [
          Image.asset(
            "assets/images/picture.png",
            height: 300,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Positioned(
            top: 35,
            left: 10,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 20,
                  )),
            ),
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: IconButton(
                  onPressed: () { 
                  },
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 35,
                  )),
            ),
          ),
        ],
      );
    
  }
}
