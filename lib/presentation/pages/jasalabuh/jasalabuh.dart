import 'package:flutter/material.dart';
import 'package:mandaohe/presentation/widget/banner_service.dart';
import 'package:mandaohe/presentation/widget/theme.dart';

class JasaLabuh extends StatefulWidget {
  const JasaLabuh({super.key});

  @override
  State<JasaLabuh> createState() => _JasaLabuhState();
}

class _JasaLabuhState extends State<JasaLabuh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jasa Labuh',
            style: semibolddeepblueextStyle.copyWith(fontSize: 15)),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.notifications_none_outlined,
            color: Colors.amber,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 25),
          child: Column(
            children: [
              const Bannerservice(),
              const SizedBox(height: 22),
              Text(
                  "Nama Lengkap",
                  textAlign: TextAlign.left,
                  style: regularwhitetext.copyWith(fontSize: 15),
                ),
                const SizedBox(height: 12),
                // ignore: avoid_unnecessary_containers
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Contoh: Budi Tabuti',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 18),

                Text(
                  "Email",
                  textAlign: TextAlign.left,
                  style: regularwhitetext.copyWith(fontSize: 15),
                ),
                const SizedBox(height: 12),
                // ignore: avoid_unnecessary_containers
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Contoh: budi@gmail.com',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),

                const SizedBox(height: 18),
                Text(
                  "Kelas",
                  textAlign: TextAlign.left,
                  style: regularwhitetext.copyWith(fontSize: 15),
                ),
                const SizedBox(height: 12),
                // ignore: avoid_unnecessary_containers
                // Container(
                //   height: 50,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(25),
                //     color: Colors.white,
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.blue.withOpacity(0.5),
                //         spreadRadius: 2,
                //         blurRadius: 3,
                //         offset:
                //             const Offset(0, 2), // changes position of shadow
                //       ),
                //     ],
                //   ),
                //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                //   child: DropdownButtonHideUnderline(
                //     child: DropdownButton(
                //       hint: const Text('Pilih Kelas'),
                //       dropdownColor: Colors.blue[100],
                //       icon: const Icon(Icons.arrow_drop_down),
                //       iconSize: 24,
                //       isExpanded: true,
                //       style: const TextStyle(
                //         color: Colors.black,
                //         fontSize: 15,
                //       ),
                //       // value: valueChoose,
                //       onChanged: (newValue) {
                //         setState(() {
                //           // ignore: unnecessary_cast
                //           // valueChoose = newValue as String?;
                //         });
                //       },
                //       items: listItem.map((valueItem) {
                //         return DropdownMenuItem(
                //           value: valueItem,
                //           child: Text(valueItem),
                //         );
                //       }).toList(),
                //     ),
                //   ),
                // ),

                const SizedBox(height: 18),

                Text(
                  "Umur",
                  textAlign: TextAlign.left,
                  style: regularwhitetext.copyWith(fontSize: 15),
                ),
                const SizedBox(height: 12),
                // ignore: avoid_unnecessary_containers
                Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Umur',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                Text(
                  "Jenis Kelamin",
                  textAlign: TextAlign.left,
                  style: regularwhitetext.copyWith(fontSize: 15),
                ),
                const SizedBox(height: 12),
                // Row(
                //   children: [
                //     GestureDetector(
                //       onTap: selectLakiLaki,
                //       child: Container(
                //         width: 100,
                //         height: 45,
                //         decoration: BoxDecoration(
                //           color: lakiLakiColor,
                //           borderRadius: BorderRadius.circular(18),
                //         ),
                //         child: const Center(
                //           child: Text(
                //             "Laki-laki",
                //             style: TextStyle(
                //               color: Colors.black,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //     const SizedBox(width: 16),
                //     GestureDetector(
                //       onTap: selectPerempuan,
                //       child: Container(
                //         width: 100,
                //         height: 45,
                //         decoration: BoxDecoration(
                //           color: perempuanColor,
                //           borderRadius: BorderRadius.circular(18),
                //         ),
                //         child: const Center(
                //           child: Text(
                //             "Perempuan",
                //             style: TextStyle(
                //               color: Colors.black,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),

                // const SizedBox(height: 12),

                // Text(
                //   "Password",
                //   textAlign: TextAlign.left,
                //   style: regularwhitetext.copyWith(fontSize: 15),
                // ),
                // const SizedBox(height: 12),
                // // ignore: avoid_unnecessary_containers
                // Container(
                //   height: 50,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(25),
                //     color: Colors.white,
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.blue.withOpacity(0.5),
                //         spreadRadius: 2,
                //         blurRadius: 3,
                //         offset:
                //             const Offset(0, 2), // changes position of shadow
                //       ),
                //     ],
                //   ),
                //   child: TextField(
                //     decoration: InputDecoration(
                //       hintText: 'Masukan password',
                //       filled: false,
                //       fillColor: Colors.white,
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(25),
                //         borderSide: BorderSide.none,
                //       ),
                //       suffixIcon: IconButton(
                //         icon: Icon(_obscureText
                //             ? Icons.visibility
                //             : Icons.visibility_off),
                //         onPressed: () {
                //           setState(() {
                //             _obscureText = !_obscureText;
                //           });
                //         },
                //       ),
                //     ),
                //     style: const TextStyle(
                //       color: Colors.black,
                //     ),
                //     obscureText: _obscureText,
                //   ),
                // ),
            ],
          ),
        ),
      ),
    );
  }
}
