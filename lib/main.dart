import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Galeri Foto'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20.0,
          ),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                'https://picsum.photos/id/88/300/200',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 75,
            alignment: Alignment.center,
            child: Text(
              'Jalan di Barcelona',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 25.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 16.0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey, width: 1.0),
                bottom: BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
            child: Column(
              spacing: 6.0,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: Colors.red,
                    ),
                    Text('  Lokasi: Barcelona, Spanyol', style: TextStyle(fontSize: 15.0),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: Colors.blue,
                    ),
                    Text('  Publikasi: 13 Augustus 2013', style: TextStyle(fontSize: 15.0),),
                  ],
                ),
              ],
            )
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 16.0),
            child: Column(
              spacing: 6.0,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Deskripsi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        'Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.',
                        style: TextStyle(
                          fontSize: 15.0
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}