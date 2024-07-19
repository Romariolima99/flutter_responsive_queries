import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Row(
        children: [
          Image.asset(
            "imagens/logo.png",
            fit: BoxFit.contain,
          ),
          Expanded(child: Container()),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_rounded)),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Cadastrar"),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.lightBlueAccent,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Entrar"),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 240, 140, 46),
            ),
          )
        ],
      ),
    );
  }
}
