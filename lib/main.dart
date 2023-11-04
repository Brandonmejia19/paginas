import 'package:flutter/material.dart';
import 'package:paginas/accesorio.dart';
import 'temas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Inicio de Sesión'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 100.0), // Puedes reemplazarlo con tu propio logo o imagen

            SizedBox(height: 20.0),

            Text(
              'Bienvenido',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20.0),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nombre de usuario',
              ),
            ),

            SizedBox(height: 10.0),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            ),

            SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => accesorios()),
              );
            },
            child: Text('Iniciar sesion'),
            ),
            SizedBox(height: 10.0),

            TextButton(
              onPressed: () {
                // Agrega la lógica para el restablecimiento de la contraseña o registro
              },
              child: Text('¿Olvidaste tu contraseña?'),
            ),
          ],
        ),
      ),
    );
  }
}
