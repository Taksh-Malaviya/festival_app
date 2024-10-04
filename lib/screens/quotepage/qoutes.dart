import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class quotes_page extends StatefulWidget {
  const quotes_page({super.key});

  @override
  State<quotes_page> createState() => _details_pageState();
}

class _details_pageState extends State<quotes_page> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text(
          "Quotes",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...data['Quotes'].map(
              (e) => GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('detaills', arguments: e);
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "${e['img']}",
                      ),
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            maxLines: 4,
                            "${e['quote']}",
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            "${e['author']}",
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
