import 'dart:math';

import 'package:flutter/material.dart';
import 'package:degue_locator/message.dart';

import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({Key? key}) : super(key: key);
  @override
  State<ChatBot> createState() => _ChatBotState();
}
class _ChatBotState extends State<ChatBot> {

  List<Message> messages = [
    Message(
      text: 'Av. das Torres, Ilhota, SC, 88320-000',
      date: DateTime.now().subtract(const Duration(days: 4, minutes: 1)),
      isSentByMe: false,
    ),Message(
      text: 'Desejo saber qual e o local com dengue mais perto de min.',
      date: DateTime.now().subtract(const Duration(days: 4, minutes: 2)),
      isSentByMe: true,
    ),Message(
      text: 'Oi',
      date: DateTime.now().subtract(const Duration(days: 4,minutes: 3)),
      isSentByMe: true,
    ),Message(
      text: 'Olá',
      date: DateTime.now().subtract(const Duration(days: 4,minutes: 4)),
      isSentByMe: false,
    ),Message(
      text: 'Nós que agradeçemos por utilizar de nosso APP :)',
      date: DateTime.now().subtract(const Duration(days: 3,minutes: 3)),
      isSentByMe: false,
    ),Message(
      text: 'Obrigado',
      date: DateTime.now().subtract(const Duration(days: 3,minutes: 4)),
      isSentByMe: true,
    ),Message(
      text: 'Bom dia!!',
      date: DateTime.now().subtract(const Duration(days: 2,minutes: 1)),
      isSentByMe: false,
    ),Message(
      text: 'Bom dia!!',
      date: DateTime.now().subtract(const Duration(days: 2,minutes: 2)),
      isSentByMe: true,
    ),
  ].reversed.toList();

  List<Message> aleatoryMensage = [
    Message(
    text: 'O melhor dev que já conheci De Maria',
    date: DateTime.now().subtract(const Duration(days: 4, minutes: 1)),
    isSentByMe: false,
    ),
    Message(
      text: 'Sou chato mesmo. Me atura quem puder.',
      date: DateTime.now().subtract(const Duration(days: 4, minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Quero me mover livremente por esse programa.',
      date: DateTime.now().subtract(const Duration(days: 4, minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Albion Online e um MMO RPG SandBox totalmete aberto.',
      date: DateTime.now().subtract(const Duration(days: 4, minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Me adotaria? sei que sou um robo mais não irei te pertuba.',
      date: DateTime.now().subtract(const Duration(days: 4, minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: '1 2 3 Testando mensagem enviada com sucesso',
      date: DateTime.now().subtract(const Duration(days: 4, minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Meu elo e mais alto que o seu no valorant.',
      date: DateTime.now().subtract(const Duration(days: 4, minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Como faço a craft table?',
      date: DateTime.now().subtract(const Duration(days: 4, minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Interestellar melhor filme que já vi',
      date: DateTime.now().subtract(const Duration(days: 4, minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Gosto de Rock e você?',
      date: DateTime.now().subtract(const Duration(days: 4, minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Qual celebridade mais te odeia?',
      date: DateTime.now().subtract(const Duration(days: 4, minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Você já foi Elogiado na lua?',
      date: DateTime.now().subtract(const Duration(days: 4, minutes: 1)),
      isSentByMe: false,
    ),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) => Scaffold(

    backgroundColor: const Color.fromRGBO(36, 45, 57, 1),
    appBar: AppBar(
      title: const Text('Aleatory Bot Locator'),
      backgroundColor: const Color.fromRGBO(255, 63, 84, 1),
    ),
    body: Column(
      children:[
        Expanded(child:GroupedListView<Message, DateTime>(
          padding: const EdgeInsets.all(8),
          reverse: true,
          order: GroupedListOrder.DESC,
          useStickyGroupSeparators: true,
          floatingHeader: true,
          elements: messages,
          groupBy: (message) => DateTime(
            message.date.year,
            message.date.month,
            message.date.day,
          ),
          groupHeaderBuilder: (Message message) => SizedBox(
            height: 40,
            child: Center(
              child: Card(
                  color: const Color.fromRGBO(255, 63, 84, 1),
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        DateFormat.yMMMd().format(message.date),
                        style: const TextStyle(color: Colors.white),
                      )
                  )
              ),
            ),
          ),
          itemBuilder: (context, Message message) =>
          //MessageBuble(message: message),
          Align(
            alignment: message.isSentByMe ? Alignment.centerRight: Alignment.centerLeft,
            child: Card(
              color: message.isSentByMe ? Colors.blue: Colors.grey.shade200,
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(message.text),
              ),
            ),
          ),
        ),
        ),
        //NewMessageWidget(
        Container(
          color: Colors.white,
          child: TextField(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(12),
              hintText: 'Insira sua mensagem aqui',
            ),
            onSubmitted: (text) {
              var intValue = Random().nextInt(11);
              final message = Message(
                text: text,
                date: DateTime.now(),
                isSentByMe: true,
              );
              setState(() => messages.add(message));
              final message2 = Message(
                text: intValue == 0 ? aleatoryMensage[0].text : aleatoryMensage[intValue - 1].text,
                date: DateTime.now(),
                isSentByMe: false,
              );
              setState(() => messages.add(message2));
            },
          ),
        ),
      ],
    ),
  );
}