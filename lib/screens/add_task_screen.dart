import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController? controller = TextEditingController();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w500)),
          const SizedBox(height: 25.0,),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {},
            controller: controller,
            cursorColor: Colors.lightBlueAccent,
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .lightBlueAccent), // Couleur quand non sélectionné
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .lightBlueAccent), // Couleur quand sélectionné
              ),
            ),
          ),
          const SizedBox(height: 25.0,),
          TextButton(
            onPressed: () {
              // Action à exécuter lors de l'appui sur le bouton
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue, // Couleur de fond
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5), // Réduire l'arrondi
              ),
              padding: EdgeInsets.symmetric(vertical: 13),
            ),
            child: const Text(
              'Add',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),

    );
  }
}
