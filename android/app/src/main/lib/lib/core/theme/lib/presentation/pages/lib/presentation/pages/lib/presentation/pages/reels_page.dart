import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (ctx, i) => Stack(
          fit: StackFit.expand,
          children: [
            const Center(child: Icon(Icons.play_circle_outline, size: 80, color: Colors.white24)),
            Positioned(right: 20, bottom: 100, child: Column(
              children: [
                IconButton(icon: const Icon(Icons.favorite, color: Colors.white), onPressed: (){}),
                IconButton(icon: const Icon(Icons.comment, color: Colors.white), onPressed: (){}),
                IconButton(icon: const Icon(Icons.share, color: Colors.white), onPressed: () => Share.share("Rejoins-moi sur Jami3ty !")),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
