import 'package:flutter/material.dart';
import 'custom_color.dart';
import 'color_schemes.dart';

void main() {
  runApp(MaterialApp(
    title: 'Rutas en flutter',
    theme: ThemeData(
      // provide light theme colors
      colorScheme: lightColorScheme,
    ),
    darkTheme: ThemeData(
      colorScheme: darkColorScheme,

      // provide dark theme colors
    ),
    themeMode: ThemeMode.system,
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => HomeScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => SecondScreen(),
    },
  ));
}

// Pantalla principal
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barraComun(),
      body: Center(
        child: FloatingActionButton(
          child: const Text('Click Here'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barraComun(),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

// Barra superior
class barraComun extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/sntss-logo.png',
            // fit: BoxFit.contain,
            height: 50,
          ),
          Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                  'SINDICATO NACIONAL DE TRABAJADORES DEL SEGURO SOCIAL 2018-2024'))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
