import 'package:flutter/material.dart';

class Bienvenida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.lightBlue],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/gato.png',
                        width: 200,
                        height: 200,
                      ),
                      SizedBox(height: 16),
                      Text(
                        '¡Bienvenido!',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Al curso de Multiplataforma',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 32),
                      Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Icon(Icons.search, color: Colors.grey),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Buscar en Google',
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          // Acción a realizar al presionar el botón
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12.0,
                            horizontal: 24.0,
                          ),
                          child: Text(
                            'Continuar',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    width: 150,
                    color: Colors.white,
                    child: Image.asset('assets/images/gato.png'),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    width: 150,
                    color: Colors.white,
                    child: Image.asset('assets/images/gato.png'),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    width: 150,
                    color: Colors.white,
                    child: Image.asset('assets/images/gato.png'),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    width: 150,
                    color: Colors.white,
                    child: Image.asset('assets/images/gato.png'),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    width: 150,
                    color: Colors.white,
                    child: Image.asset('assets/images/gato.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
