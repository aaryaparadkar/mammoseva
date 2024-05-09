import 'package:flutter/material.dart';

class InfoComponent extends StatelessWidget {
  final String title;
  final String imagePath;
  final String content;

  const InfoComponent({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFFFCFDF),
      ),
      child: ListTile(
        title: Text(title),
        leading: ClipOval(
          child: Image.asset(
            imagePath,
            width: 40,
            height: 40,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 200,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      content,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
