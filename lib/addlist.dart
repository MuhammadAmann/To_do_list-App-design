import 'package:flutter/material.dart';
import 'package:to_do_list/data.dart';

class addlist extends StatefulWidget {
  const addlist({super.key});

  @override
  State<addlist> createState() => _addlistState();
}

class _addlistState extends State<addlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pcolor,
        title: Center(child: Text("Add a list")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: pcolor),
                      ),
                      hintText: "Add title",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: hfcolor),
                      )),
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: pcolor),
                    ),
                    hintText: "Add subtitle",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: hfcolor),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: hfcolor),
                  onPressed: () {},
                  child: Text("Add"))
            ],
          ),
        ),
      ),
    );
  }
}
