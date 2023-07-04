import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/view/task_list/task_list_page.dart';

class SplashPage extends StatelessWidget {
  void _onEntrarPressed(BuildContext context) {
    // Lógica para cuando se presione el botón "Entrar"
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => TaskListPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const Shape(),
            ],
          ),
          const SizedBox(height: 79),
          Image.asset(
            'assets/images/Onboarding-image.png',
            width: 180,
            height: 168,
          ),
          const SizedBox(height: 99),
          const H1("Lista de tareas"),
          const SizedBox(height: 21),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: GestureDetector(
              onTap: () {
                _onEntrarPressed(context);
              },
              child: const Text(
                "La mejor forma para que no se te olvide nada es anotarlo, guardar tus",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Shape extends StatelessWidget {
  const Shape();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blue,
    );
  }
}

class H1 extends StatelessWidget {
  final String text;

  const H1(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
