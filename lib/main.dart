import 'package:flutter/material.dart';
import 'package:today/des.dart';
import 'package:today/register.dart';

//import 'button.txt';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = "";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,

      title: 'Prueba',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 89, 236, 236),
        body: const MyHomePage(),
      
      )
  
    );
  }
}

class MyHomePage extends StatefulWidget {
    const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  //GlobalKey _formKey  = new GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
    
            child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text(
                'CookApp',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              padding: const EdgeInsets.all(46),
              margin: EdgeInsets.all(28),
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              width: 120,
              height: 110,
            ),
           
            Padding(
              // key: _formKey,
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, Ingresa el nombre de usuario';
                  }
                  return null;
                },
                style: TextStyle(color: Color.fromARGB(255, 209, 104, 104)),
                controller: nameController,
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                  //  labelText: 'Nombre de Usuario',
                  hintText: "Ingrese su Nombre",
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, Ingresa tu contraseña';
                  }
                  return null;
                },
                style: TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  //border: OutlineInputBorder(),
                  //labelText: 'Contraseña',
                  hintText: "Ingrese su Contraseña",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Olvidaste tu contraseña',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Iniciar Sesión'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DescriptionPlace()));
                      // Si el formulario es válido, queremos mostrar un Snackbar
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                            'Por favor, Ingresa los datos. Hay campos vacios'),
                        backgroundColor: Colors.green,
                        //width: 600,
                        shape: StadiumBorder(),
                        elevation: 560,
                        //   comportamiento: SnackBarBehavior.floating;
                      ));
                    }
                  },
                )),
            Row(
              children: <Widget>[
                const Text('Aun no tienes cuenta?'),
                TextButton(
                    child: const Text(
                      'Registrate',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Registro();
                        }),
                      );
                    })
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
       
   
      ),
  // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}