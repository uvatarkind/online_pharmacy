import 'package:flutter/material.dart';
import 'package:online_pharmacy/screans/panadol.dart';
import 'package:online_pharmacy/screans/skincare.dart';
import 'package:online_pharmacy/screans/stripss.dart';
import 'package:online_pharmacy/screans/toolspage.dart';
import 'package:online_pharmacy/screans/vitamin.dart';
import '../components/model for home page .dart';
import '../funcations/funcation1.dart';
import 'BUBBULE.dart';
import 'chalpas.dart';
import 'medicine.dart';
import 'on.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
      children: [
        ClipPath(
          clipper: ClipPathClass(),
          child: Container(
            height: 260,
            color: const Color(0xff1C82CB),
          ),
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 45),
              child: Image(
                image: AssetImage(
                  'assets/top home/bg.png',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const medicinepage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(20),
                      ),
                      child: Image.asset(
                        'assets/top home/medicine.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Medicine",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            letterSpacing: .5),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const toolspage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(20),
                      ),
                      child: Image.asset(
                        'assets/top home/thermometer_6946428.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Tools",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            letterSpacing: .5),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const vitemanpage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(20),
                      ),
                      child: Image.asset(
                        'assets/top home/pills_6946469.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Vitamin",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            letterSpacing: .5),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const skincarepage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(20),
                      ),
                      child: Image.asset(
                        'assets/top home/facial-mask_9170092.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Skin care",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            letterSpacing: .5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3, left: 20, bottom: 15),
                    child: Text(
                      "Products",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  children: [
                    ItemContainer(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Bubblepage();
                        }));
                      },
                      image: "assets/products home/bubles.jpg",
                    ),
                    ItemContainer(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const chAlpa();
                        }));
                      },
                      image: "assets/products home/ch alpa.jpg",
                    ),
                    ItemContainer(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const creast();
                        }));
                      },
                      image: "assets/products home/creast.jpg",
                    ),
                    ItemContainer(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const pandol();
                        }));
                      },
                      image: "assets/products home/panadol.jpg",
                    ),
                    ItemContainer(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const strepsil();
                        }));
                      },
                      image: "assets/products home/stripls.jpg",
                    ),
                    ItemContainer(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const strepsil();
                        }));
                      },
                      image: "assets/midicine/amsor.jpg",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
