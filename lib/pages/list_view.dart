import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arrayName = ['Allahu', 'Rahmanu', 'Rahimu', 'Kuddusu', 'Maliku'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                '${index + 1}',
                style: TextStyle(fontSize: 20),
              ),
              title: Text(
                arrayName[index],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(arrayName[index]),
              trailing: Icon(Icons.chevron_right),
            );
            // Row(
            //   children: [
            //     Column(
            //       children: [
            //         Text(
            //           arrayName[index],
            //           style: const TextStyle(
            //               fontSize: 20, fontWeight: FontWeight.bold),
            //         ),
            //         Text(
            //           arrayName[index],
            //           style: TextStyle(
            //               fontSize: 16, fontWeight: FontWeight.normal),
            //         )
            //       ],
            //     ),
            //     Container(
            //       margin: EdgeInsets.only(left: 20),
            //       child: Text(
            //         arrayName[index],
            //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //       ),
            //     )
            //   ],
            // );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 2,
            );
          },
          itemCount: arrayName.length),
      // ListView Builder
      // ListView.builder(
      //   itemBuilder: (context, index) {
      //     return Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         arrayName[index],
      //         style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //       ),
      //     );
      //   },
      //   itemCount: arrayName.length,
      //   scrollDirection: Axis.vertical,
      //   itemExtent: 50,
      // ),
      //simple listView
      //const Center(
      //   child: ListView(
      //     scrollDirection: Axis.vertical,
      //     reverse: true,
      //     children: const [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           'Hello ListView1!',
      //           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           'Hello ListView2!',
      //           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           'Hello ListView3!',
      //           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
