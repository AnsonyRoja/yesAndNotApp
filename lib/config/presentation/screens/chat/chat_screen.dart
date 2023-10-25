import 'package:flutter/material.dart';
import 'package:yes_no_app/config/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Amor ❤️'),
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/d1/8e/eb/d18eebcc-195c-c148-bd74-1920ac9a0638/mzi.vdnjgskg.jpg/256x256bb.jpg'),
          ),
        ),
      ),
      //en programacion de etiquetas html container vendria siendo un div.
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // left: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return MyMessageBubble();
              },
            )),
            Text('Mundo')
          ],
        ),
      ),
    );
  }
}
