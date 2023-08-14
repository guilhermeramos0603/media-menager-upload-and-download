import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const List(),
    );
  }
}

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: InkWell(
              onTap: () {},
              child: AppBar(
                backgroundColor: Colors.deepPurple,
                title: const Text('List'),
              ))),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints(minHeight: 120, maxWidth: 96),
                    child: Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: const Text("teste"),
                  )
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomSheet: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: const Text("Digite seu nome para Cadastrar",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 20), // add padding to adjust text
                          isDense: true,
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                          )),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )),
                          hintText: ("Digite seu nome"),
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        keyboardType: TextInputType.name,
                        initialValue: null,
                        onChanged: (value) {},
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 30),
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.send,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
