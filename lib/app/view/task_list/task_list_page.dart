import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/view/components/h1.dart';
import 'package:flutter_application_1/app/view/components/shape.dart';
import '../../model/task.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({Key? key}) : super(key: key);

  @override
  State<TaskListPage> createState() => _TaskListPageState();
  
}

class _TaskListPageState extends State<TaskListPage> {

  final taskList = <Task>[
    Task('Tarea1'),
    Task('Tarea2'),
    Task('Tarea3'),
  ];
  
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Center(child: Text('Atrás')),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.primary,
            child: Column(
              children: [
                const Row(children: [Shape()]),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/gato.png',
                      width: 120,
                      height: 120
                    ),
                    const SizedBox(height: 16),
                    const H1('Completa tus tareas', color: Colors.white),
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30,top: 35),
            child: H1('Tareas'),
          ),
          const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListView.separated(
                itemCount: taskList.length,
                itemBuilder: (_, index) => _taskItem(
                  taskList[index],
                  onTap: () {
                    taskList[index].done = !taskList[index].done;
                    setState(() {
                      
                    });
                  },
                ),
                separatorBuilder: (_, __) => const SizedBox(height: 16)
                ),
            ),
          ),
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add, size: 50),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TaskListPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
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
                    'Ir a Bienvenida',
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
    );
  }
}



class _taskItem extends StatelessWidget {
  const _taskItem(this.task, {super.key, this.onTap});

  final Task task;
  final VoidCallback? onTap;
  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap, 
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21,vertical: 18),
          child: Row(
            children: [
              Icon(
                task.done 
                ? Icons.check_box_rounded
                : Icons.check_box_outline_blank,
                color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 10),
                Text(task.title),
            ],
          ),
        ),
      ),
    );
  }
}


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
