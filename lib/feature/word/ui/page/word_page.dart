import 'package:flutter/material.dart';

class WordPage extends StatelessWidget {
  const WordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Word')),
        leading: Center(child: Text('Today', style: Theme.of(context).textTheme.labelLarge)),
        actions: [
          IconButton(
            icon: Icon(Icons.font_download),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.ios_share_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text("November 12", style: Theme.of(context).textTheme.headlineMedium)),
          Expanded(
            child: Center(
              child: Text("Lord", style: Theme.of(context).textTheme.bodyLarge),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Numbers 6-23", style: Theme.of(context).textTheme.labelLarge),
                SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Icon(Icons.favorite),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
