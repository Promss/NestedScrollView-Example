import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NestedScrollView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          const SliverAppBar(
            title: Text('NestedScrollView Example'),
            pinned: true,
            floating: true,
            snap: true,
            backgroundColor: Color.fromRGBO(27, 31, 42, 1.0),
          ),
        ];
      },
      body: Container(
        padding: const EdgeInsets.all(8.0),
        color: const Color.fromRGBO(27, 31, 42, 1.0),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 100,
              width: 100,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'BLA BLA BLA', // Замените на свой текст
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 3, // Замените на количество ваших вкладок
                child: Column(
                  children: [
                    const TabBar(
                      tabs: [
                        Tab(text: 'Вкладка 1'),
                        Tab(text: 'Вкладка 2'),
                        Tab(text: 'Вкладка 3'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Container(
                            color: Colors.red,
                            child: const Center(
                              child: Text('Содержимое вкладки 1'),
                            ),
                          ),
                          Container(
                            color: Colors.green,
                            child: const Center(
                              child: Text('Содержимое вкладки 2'),
                            ),
                          ),
                          Container(
                            color: Colors.blue,
                            child: const Center(
                              child: Text('Содержимое вкладки 3'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
