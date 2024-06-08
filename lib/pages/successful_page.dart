import 'package:flutter/material.dart';

class SuccessfulPage extends StatelessWidget {
  const SuccessfulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.check_circle_outline_outlined,
            size: 80,
            color: Colors.green,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('successful!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 100, right: 100),
            child: Center(
              child: Text(
                'U can now successfully enter',
                style: TextStyle(color: Color.fromARGB(255, 158, 153, 153)),
              ),
            ),
          ),
          const Text(
            ' our amazing app, start shopping',
            style: TextStyle(color: Color.fromARGB(255, 158, 153, 153)),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 50,
              right: 50,
            ),
            child: Container(
              width: 500,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "homePage");
                },
                child: const Text(
                  'Start Shopping',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
