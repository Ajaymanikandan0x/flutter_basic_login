import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('name ${index + 1}'),
            leading: index % 2 == 0
                ? const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YW5vbnltb3VzfGVufDB8fDB8fHww'),
                  )
                : hai(),
            trailing: Text('${index + 1} :00 pm'),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: 15);
  }

  hai() {
    return const SizedBox(
      height: 50,
      width: 55,
      child: Image(
        image: NetworkImage(
            'https://plus.unsplash.com/premium_photo-1670623042512-1a5ecebc3f42?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YW5vbnltb3VzfGVufDB8fDB8fHww'),
        height: 40,
      ),
    );
  }
}
