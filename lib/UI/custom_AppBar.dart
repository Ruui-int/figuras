import 'package:flutter/material.dart';
import 'package:flutter_custom_pain/UI/custom_shape.dart';

class CustomAppBar extends StatelessWidget{
 
 final TextEditingController appBarController;
  
  const CustomAppBar({super.key, required this.appBarController});

  @override
  Widget build(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
    return Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.75,
            child: ClipPath(
              clipper: CustomShapeClipper(),
              child: Container(
                height: height / 3,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 227, 229, 235),
                      Color.fromARGB(250, 228, 194, 213)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: ClipPath(
              clipper: CustomShapeClipper2(),
              child: Container(
                height: height / 3.5,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 227, 229, 235),
                      Color.fromARGB(250, 228, 194, 213)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.25,
            child: ClipPath(
              clipper: CustomShapeClipper3(),
              child: Container(
                height: height / 3,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 227, 229, 235),
                      Color.fromARGB(250, 228, 194, 213)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40, right: 40, top: height / 5),
            child: Material(
              borderRadius: BorderRadius.circular(30.0),
              elevation: 8,
              child: TextFormField(
                controller: appBarController,
                cursorColor: Colors.orange[200],
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  hintText: "Escribe el nombre de una figura",
                  prefixIcon:
                      const Icon(Icons.brush, color: Color.fromARGB(255, 190, 140, 207), size: 30),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
          ),
        ],
      );
  }




}