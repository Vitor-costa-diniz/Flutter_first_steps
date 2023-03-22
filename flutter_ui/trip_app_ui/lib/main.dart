import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;
  int totalPage = 4;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(
            page: 1,
            image: 'assets/images/one.jpg',
            title: 'Greek',
            description:
                'Greek is an wonderful place to visiti, mainly with you are with your partner',
          ),
          makePage(
            page: 2,
            image: 'assets/images/two.jpg',
            title: 'Taj Mahal',
            description:
                'Taj Mahal is an wonderful place, with you want to connect with the indu traditions so this is the right place to visit.',
          ),
          makePage(
            page: 3,
            image: 'assets/images/three.jpg',
            title: 'Shamlaji Sri Krishna Temple',
            description:
                'Shamlaji, also spelled Shamalaji, is a major Hindu pilgrimage centre in Aravalli district of Gujarat state of India. The Shamlaji temple is dedicated to Vishnu.Several other Hindu temples are located nearby. ',
          ),
          makePage(
            page: 4,
            image: 'assets/images/four.jpg',
            title: 'Hamburg',
            description:
                'Hamburg is a major international and domestic tourist destination. The Speicherstadt and Kontorhausviertel were declared World Heritage Sites by UNESCO in 2015.',
          ),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            stops: const [0.3, 0.9],
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(page.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                  Text('/$totalPage',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(Icons.star,
                                color: Colors.yellow, size: 15)),
                        Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(Icons.star,
                                color: Colors.yellow, size: 15)),
                        Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(Icons.star,
                                color: Colors.yellow, size: 15)),
                        Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(Icons.star,
                                color: Colors.yellow, size: 15)),
                        Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: const Icon(Icons.star,
                                color: Colors.grey, size: 15)),
                        const Text('4.0',
                            style: TextStyle(color: Colors.white70)),
                        const Text('(2300)',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 12)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        description,
                        style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                          height: 1.9,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'READ MORE',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
