import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Controlador(),
    debugShowCheckedModeBanner: false,
  ));
}
class Controlador extends StatefulWidget {
  const Controlador({ Key? key }) : super(key: key);

  @override 
  _ControladorState createState() => _ControladorState();
}

class _ControladorState extends State<Controlador> {

  int cont = 0;

  void increment(){
    //da um refresh na tela
    setState(() {
      cont++;
    });
  }

  void decrement(){
    setState(() {
      if(cont>0){
      cont--;
      }
      else{}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
          decoration:const BoxDecoration(
            image: DecorationImage(
            image: AssetImage("images/restaurant.png"),
            fit: BoxFit.cover
          ),
          ),
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Pode Entrar!", style: TextStyle(fontSize: 30, color: Colors.white),),
          Text(cont.toString(), style: TextStyle(fontSize: 100, color: Colors.white),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: increment, 
                  child: Text("Entrou"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white
                  ),     
                ),
                const SizedBox(width: 64,),
                TextButton(
                  onPressed: decrement, 
                  child: Text("Saiu"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white
                  ),
                ),
            ],
          )
        ],
      ),
      ),
    );
  }
}
