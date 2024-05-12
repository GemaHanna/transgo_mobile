import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryCustomer extends StatelessWidget {
  const HistoryCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: const Color(0xFF1f2545),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Navigate back when the arrow is tapped
          },
          child: const Icon(
            CupertinoIcons.back, // Menggunakan icon back dari CupertinoIcons
            color: Colors.white, // Set the arrow color to white
          ),
        ),
      ),
      child: Stack(
        children: [
          // Blue background covering 50% of the screen height
          Container(
            color: const Color(0xFF1f2545),
            height: 80, // Mengatur tinggi container
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5.3, // Full height
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: List.generate(
                        5,
                        (index) => BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 1,
                          blurRadius: 0.25,
                          offset: const Offset(0, 3),
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10, // Menurunkan teks sekitar 1cm
                        ),
                        Text(
                          "HISTORY",
                          style: TextStyle(
                            fontSize: 30, // Ukuran font 30
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 5.3 + 70, // Sesuaikan dengan posisi di bawah teks "HISTORY"
            left: MediaQuery.of(context).size.width / 4.4, // Geser ke tengah secara horizontal
            child: Container(
              width: MediaQuery.of(context).size.width / 2.2,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10),
                boxShadow: List.generate(
                  5,
                  (index) => BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 1,
                    blurRadius: 0.25,
                    offset: const Offset(0, 3),
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  "Belum Acc",
                  style: TextStyle(
                    fontSize: 20, // Ukuran font 20
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
