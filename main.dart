
import 'package:flutter/material.dart';

void main() => runApp(MiniCapApp());

class MiniCapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MiniCap',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('MiniCap', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => HomeScreen())),
              child: Text('Começar'),
            )
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Projetos')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => EditorScreen())),
          child: Text('Novo Projeto'),
        )),
      ),
    );
  }
}

class EditorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Editor')),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black12,
              child: Center(child: Text('Pré-visualização')),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(5, (index) => Container(
                  margin: EdgeInsets.all(8),
                  width: 80, color: Colors.blue[100],
                  child: Center(child: Text('Clip ${index+1}')),
                )),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(icon: Icon(Icons.cut), onPressed: () {}),
                IconButton(icon: Icon(Icons.music_note), onPressed: () {}),
                IconButton(icon: Icon(Icons.text_fields), onPressed: () {}),
                IconButton(icon: Icon(Icons.filter), onPressed: () {}),
                IconButton(icon: Icon(Icons.sticky_note_2), onPressed: () {}),
                IconButton(icon: Icon(Icons.aspect_ratio), onPressed: () {}),
                IconButton(
                  icon: Icon(Icons.upload),
                  onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ExportScreen())),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ExportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exportar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Escolha a resolução:'),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text('720p')),
            ElevatedButton(onPressed: () {}, child: Text('1080p')),
            ElevatedButton(onPressed: () {}, child: Text('4K')),
          ],
        ),
      ),
    );
  }
}
