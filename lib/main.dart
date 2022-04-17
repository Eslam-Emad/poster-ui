import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("assets/poster.jpg")),
            ),
          ),
          Container(
            height: size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.bottomCenter,
                    end: FractionalOffset.topCenter,
                    colors: [
                  Colors.black12,
                  Colors.black.withOpacity(0.9),
                  Colors.transparent
                ])),
          ),
          Positioned(
              top: 50,
              right: 10,
              child: Column(
                children: const [
                  ReferenceIcon(icon: Icons.share, color: Colors.black54),
                  ReferenceIcon(
                      icon: Icons.star_border, color: Colors.transparent),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Superman",
                          style: TextStyle(color: Colors.white, fontSize: 40)),
                      Text(
                        "2016 ‧ Action/Adventure ‧ 2h 31m",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5), fontSize: 12),
                      ),
                      const Rate(),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  "Summary",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(height: 20),
                Text(
                  """Bruce Wayne, a billionaire, believes that Superman is a threat to humanity after his battle in Metropolis. Thus, he decides to adopt his mantle of Batman and defeat him once and for all.
                  """,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.5), fontSize: 12),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 20),
                const Button( text: "Watch Now",color: Colors.red),
                 Button(text: "Watch Trailer",color: Colors.white.withOpacity(0.1))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ReferenceIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const ReferenceIcon({Key? key, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.white)),
      child: Icon(icon, color: Colors.white),
    );
  }
}

class Rate extends StatelessWidget {
  const Rate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.star_rate, color: Colors.amber),
        Icon(Icons.star_rate, color: Colors.amber),
        Icon(Icons.star_rate, color: Colors.amber),
        Icon(Icons.star_rate, color: Colors.amber),
        Icon(Icons.star_rate, color: Colors.grey),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final Color color;
  final String text;
  const Button({Key? key,required  this.color, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return  Container(
      height: size.height * 0.09,
      width: size.width,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow:  [
            BoxShadow(
                color: color,
                blurRadius: 7,
                spreadRadius: 1,
                offset: const Offset(1, 3))
          ]),
      child:  Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
