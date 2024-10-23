import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final bool isShort;

  const VideoCard({super.key, this.isShort = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[900], // Dark grey background
        borderRadius: BorderRadius.circular(10), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      width: isShort ? 120 : double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Use Expanded to ensure the image takes up available space
          Expanded(
            child: AspectRatio(
              aspectRatio: isShort ? 9 / 16 : 16 / 9,
              child: Image.network(
                'https://www.google.com/imgres?q=display%20freepik%20images%20free%20download&imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-vector%2Fcylinder-podium-abstract-color-background_107791-29349.jpg&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Fvectors%2Fdisplay-style&docid=VoQB4pLDuvB-VM&tbnid=7dOpznnlk8mvMM&vet=12ahUKEwiL7Y28gKSJAxWRVfEDHQ8SDoMQM3oFCIMBEAA..i&w=626&h=434&hcb=2&itg=1&ved=2ahUKEwiL7Y28gKSJAxWRVfEDHQ8SDoMQM3oFCIMBEAA',
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (!isShort)
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '',
      
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
        ],
      ),
    );
  }
}
