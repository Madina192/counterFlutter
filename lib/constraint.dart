import 'package:flutter/material.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.blue,
            child: Text('nblnkjhhkln jbhjblkjhnkjhkjbkhblbl'),
          )
        ),
      ],
      // child: ConstrainedBox(
      //   constraints: const BoxConstraints(
      //       minHeight: 70,
      //       minWidth: 70,
      //       maxHeight: 150,
      //       maxWidth: 150), //FittedBox
      //   child: Container(
      //     color: Colors.red,
      //     width: 145,
      //     height: 145,
      //   ),
      // ),
    );
  }
}
