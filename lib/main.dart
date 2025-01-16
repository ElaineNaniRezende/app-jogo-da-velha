import 'package:flutter/material.dart';
import 'package:myapp/componentes/jogo_da-velha.dart';
import 'componentes/jogo_da-velha.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const String titulo = 'Jogo da Velha';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const HomePage(title: titulo),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var floatingActionButton = FloatingActionButton(
      onPressed: () {},
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: const Color.fromARGB(137, 245, 204, 81),
                //child: const Text('Primeiro Projeto'),ESCRITA
              ),
            ),
             Expanded(
              flex: 5,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     Expanded(
                      child: Container(
                       alignment: Alignment.center,
                       color: const Color.fromARGB(133, 245, 204, 81),
                       //child: const Text('Primeira Linha'),
                      ),
                    ),
                    Expanded(
                    flex: 5,
              child: Container(
                alignment: Alignment.center,
                
                color: const Color.fromARGB(255, 255, 255, 255),
                child: const Padding(
                 padding: EdgeInsets.all(10.0),
                 child: JogoDaVelha(),
               )

              ),
            ),
                    Expanded(
              child: Container(
                alignment: Alignment.center,
                color:  const Color.fromARGB(128, 245, 204, 81),
                //child: const Text('Terceira Linha'),
              ),
            ),
                ]
              ),
            ),
               Expanded(
                child: Container(
                 alignment: Alignment.center,
                 color:const Color.fromARGB(128, 245, 204, 81),
                 //child: const Text('Layoud inferior'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}