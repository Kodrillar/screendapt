import 'package:flutter/material.dart';
import 'package:screendapt/screendapt.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(760, 1028),
      builder: (context, _) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MyHomePage(title: 'Screendapt Demo'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SText(
              'A scalable screendapt text',
              style: TextStyle(fontSize: 18),
              maxFontSize: 30,
            ),
            const Text('Normal text: Scalable icon below me'),
            const SIcon(
              Icons.abc,
              iconSize: 30,
              maxIconSize: 40,
            ),
            SContainer(
              maxWidth: 800,
              child: Container(
                color: Colors.red,
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
