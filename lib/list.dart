import 'package:flutter/material.dart';
import 'package:to_do_list/data.dart';
// import 'package:http/http.dart' as http;

class To_dolist extends StatefulWidget {
  const To_dolist({super.key});

  @override
  State<To_dolist> createState() => _To_dolistState();
}

// ignore: camel_case_types
class _To_dolistState extends State<To_dolist> {
  final titlecontroller = TextEditingController();
  final subtitlecontroller = TextEditingController();
  var _contr = TextEditingController();

  //Create a empty list(array) to take input from user and store/add in new section

   List t = List.empty(growable: true);
   List st = List.empty(growable: true);

  List title = [
    'Abdul Manan',
    'Shehzad warraich',
    'Wasi ahmed',
    'adheer ahmed',
    'Abu Bakar',
    'Ali Abdullah',
    'Suleman',
    'Ch hamza',
    'Zeeshan gujjer'
  ];
  List sub = [
    'CA inter, Lawyer',
    'Software Eng',
    'CA Inter + Trainee',
    'janum',
    'Mobile App Developer',
    'MBBS final Year Student',
    'Laywer Stduent',
    'Property Agent',
    'BS English Student'
  ];

  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pcolor,
        title: const Center(child: Text("To-do Bar")),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        //Upper container in which i create a search bar and "Add button" in
        Expanded(
          flex: 4,
          child: Container(
            padding: const EdgeInsets.only(left: 6, right: 6, top: 9),
            color: const Color.fromARGB(255, 230, 229, 229),
            width: double.infinity,
            height: double.infinity,

            //add  widget "SingleChildScrollView" to avoid bottom overflow of search bar and add button
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _contr,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search any List title here",
                      suffixIcon: IconButton(
                          onPressed: () {
                            _contr.clear();
                          },
                          icon: Icon(
                            Icons.clear,
                            color: hfcolor,
                          )),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(37),
                        borderSide: const BorderSide(color: scolor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(37),
                        borderSide: const BorderSide(color: hfcolor),
                      ),
                    ),
                  ),

                  //Add a "row" to make "Add button"

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // " + Add " button
                      Container(
                        margin:
                            const EdgeInsets.only(top: 12, bottom: 6, left: 10),
                        height: 30,
                        width: 60,
                        child: FloatingActionButton.extended(
                          backgroundColor: hfcolor,
                          extendedPadding: const EdgeInsets.all(10),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: ((context) {
                                  return Dialog(
                                    shape: const RoundedRectangleBorder(
                                      //Add border outline to the dialog box
                                      // side: BorderSide(color:hfcolor),

                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Container(
                                        height: 250,
                                        child: Column(
                                          children: [
                                            SizedBox(height: 6),
                                            Center(
                                                child: Text(
                                              "Add list here",
                                              style: TextStyle(
                                                  color: pcolor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            )),
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            TextField(
                                              controller: titlecontroller,
                                              decoration: InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            37),
                                                    borderSide:
                                                        const BorderSide(
                                                            color: pcolor),
                                                  ),
                                                  hintText: "Add title",
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            37),
                                                    borderSide:
                                                        const BorderSide(
                                                            color: hfcolor),
                                                  )),
                                            ),
                                            const SizedBox(height: 15),
                                            Container(
                                              child: TextField(
                                                controller: subtitlecontroller,
                                                decoration: InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            37),
                                                    borderSide:
                                                        const BorderSide(
                                                            color: pcolor),
                                                  ),
                                                  hintText: "Add subtitle",
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            37),
                                                    borderSide:
                                                        const BorderSide(
                                                            color: hfcolor),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //An ADD elevated button here
                                            const SizedBox(height: 20),

                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                hfcolor),
                                                    onPressed: () {
                                                      String titlee =
                                                          titlecontroller.text;
                                                      String subtitlee =
                                                          subtitlecontroller
                                                              .text;

                                                      // print(
                                                      //     'Title = ${titlee}, Subtitle = ${subtitlee}');

                                                      //Performing whole funtionality to Update
                                                      //the List that I can take input from user

                                                      //Use 'Setstate((){})' to update he List on screen output on screen
                                                      if (title.isNotEmpty &&
                                                          sub.isNotEmpty) {
                                                        setState(() {
                                                          titlecontroller.text =
                                                              '';
                                                          subtitlecontroller
                                                              .text = '';

                                                          title.add(titlee
                                                              .toString());
                                                          sub.add(subtitlee
                                                              .toString());
                                                        });
                                                        Navigator.pop(context);
                                                      }
                                                      ;
                                                    },
                                                    child: const Text("Add")),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              238,
                                                              236,
                                                              236),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      "Cencel",
                                                      style: TextStyle(
                                                          color: hfcolor),
                                                    ))
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }));
                          },
                          label: const Center(
                              child: Text(
                            "+ Add",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        const SizedBox(
          height: 5,
        ),

        // Start second container in this container make a the lists
        // and this container backword of the upper container so that all the list when
        // scroll-up then the lists will scroll behind the upper container

        Expanded(
          flex: 15,
          child: Container(
            decoration: const BoxDecoration(
                // color: Color.fromARGB(255, 192, 125, 125),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),

            //Functionality  <<<---------|||

            // All the functionality perform here, this list is created
            //with hard-code, perform the whole functionality by using "List(Arrays)"

            child: ListView.builder(
              itemCount: title.length,
              itemBuilder: (BuildContext Context, int index) {
                return SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    child: Material(
                      elevation: 20.0,
                      shadowColor: Colors.blueGrey,
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        tileColor: Color.fromARGB(255, 250, 250, 250),
                        leading: const Icon(
                          Icons.person,
                          color: hfcolor,
                        ),
                        trailing: SizedBox(
                          width: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                  onTap: () {
                                    titlecontroller.text = title[index];
                                    subtitlecontroller.text = sub[index];
                                    setState(() {
                                      selectedindex = index;
                                      update();
                                    });
                                  },
                                  child: Icon(Icons.edit, color: Colors.grey)),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    title.removeAt(index);
                                    sub.removeAt(index);
                                  });
                                },
                                child: Icon(
                                  Icons.delete,
                                  color: hfcolor,
                                ),
                              )
                            ],
                          ),
                        ),
                        title: (Text(title[index],
                            style: const TextStyle(
                                color: pcolor, fontWeight: FontWeight.w500))),
                        subtitle: Text(sub[index],
                            style: const TextStyle(
                                color: Color.fromARGB(255, 34, 34, 33))),
                        onTap: () {},
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ]),
    );
  }

  void update() {
    showDialog(
        context: context,
        builder: ((context) {
          return Dialog(
            shape: const RoundedRectangleBorder(
              //Add border outline to the dialog box
              // side: BorderSide(color:hfcolor),

              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 250,
                child: Column(
                  children: [
                    SizedBox(height: 6),
                    Center(
                        child: Text(
                      "Add list here",
                      style: TextStyle(
                          color: pcolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
                    const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      controller: titlecontroller,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(37),
                            borderSide: const BorderSide(color: pcolor),
                          ),
                          hintText: "Add title",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(37),
                            borderSide: const BorderSide(color: hfcolor),
                          )),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      child: TextField(
                        controller: subtitlecontroller,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(37),
                            borderSide: const BorderSide(color: pcolor),
                          ),
                          hintText: "Add subtitle",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(37),
                            borderSide: const BorderSide(color: hfcolor),
                          ),
                        ),
                      ),
                    ),

                    //An ADD elevated button here
                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: hfcolor),
                            onPressed: () {
                              // print(
                              //     'Title = ${titlee}, Subtitle = ${subtitlee}');

                              //Performing whole funtionality to Update
                              //the List that I can take input from user

                              //Use 'Setstate((){})' to update he List on screen output on screen
                              String titleee = titlecontroller.text;
                              String subtitleee = subtitlecontroller.text;
                              
                              if (title.isNotEmpty && sub.isNotEmpty) {
                                setState(() {
                                   titlecontroller.text = '';
                                  subtitlecontroller.text = '';

                                  title[selectedindex] = titleee;
                                  sub[selectedindex] = subtitleee;
                                  selectedindex = -1;
                                });
                                Navigator.pop(context);
                              }
                            },
                            child: const Text("Update")),
                        const SizedBox(
                          width: 8,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 238, 236, 236),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Cencel",
                              style: TextStyle(color: hfcolor),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
