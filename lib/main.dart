import 'package:flutter/material.dart';

void main() {
  runApp(const Uts());
}

class Uts extends StatelessWidget {
  const Uts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shoes',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      CircleAvatar(
                        child: Image.network(https://cdn.skatedeluxe.com/thumb/OVtgnh50kpR7TRNpre7TZExQOMA=/fit-in/600x700/filters:fill(white):brightness(-4)/product/146727-4-NikeSB-ZoomBlazerMidPremium.jpg),
                      ),
                     
                      ),
                    ],
                  ))
            ],
          ),
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: .2,
                  blurRadius: 50,
                  offset: Offset(0, 10), // changes position of shadow
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.network(
                        'https://cdn.skatedeluxe.com/thumb/OVtgnh50kpR7TRNpre7TZExQOMA=/fit-in/600x700/filters:fill(white):brightness(-4)/product/146727-4-NikeSB-ZoomBlazerMidPremium.jpg',
                        scale: 5,
                      )),
                  right: 0,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Nike SB Zoom Blazer'),
                      Text(
                        'Mid Premium',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.attach_money_outlined),
                          Text('8,795')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
