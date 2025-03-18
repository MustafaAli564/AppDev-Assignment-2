import 'package:flutter/material.dart';

class Filtercard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final bool selected;
  final VoidCallback? onTap; 

  const Filtercard({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
    required this.selected,
    this.onTap, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: color,
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: const Color.fromARGB(255, 88, 88, 88),
            width: 0.5,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              if (selected) Icon(icon, color: Colors.black, size: 12),
              if (selected) SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}