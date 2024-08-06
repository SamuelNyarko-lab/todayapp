import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:todayapp/helpers/helpers.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 40,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          padding: EdgeInsets.zero,
          iconSize: 20,
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 20,
          ),
          style: const ButtonStyle(),
          onPressed: () {},
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AutoSizeText(
                      'People',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(80, 19, 213, 1),
                            Color.fromRGBO(5, 104, 254, 1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(
                        //     25,
                        //   ),
                        // ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            horizontalSpace(5),
                            const AutoSizeText(
                              'Add',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                verticalSpace(20),
                const SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                verticalSpace(20),
                Container(
                  //height: 100,
                  width: deviceWidth,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(222, 219, 255, 1),
                      borderRadius: BorderRadius.circular(
                        10,
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AutoSizeText(
                        'Invite Friends',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      verticalSpace(10),
                      SizedBox(
                        width: deviceWidth / 1.5,
                        child: RichText(
                          text: const TextSpan(
                              text: 'Earn ',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: 'IDR 900,000',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' for every friend who joins your invitation',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      verticalSpace(10),
                      MaterialButton(
                        onPressed: () {},
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            )),
                        color: Colors.white,
                        child: const AutoSizeText(
                          'Invite Friend',
                          style: TextStyle(
                            color: Color.fromARGB(255, 20, 121, 204),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                verticalSpace(20),
                peopleList('Raihan Fikri', 'raihanfikri@gmail.com',
                    'assets/images/1.jpg'),
                peopleList('Raihan Fikri', 'raihanfikri@gmail.com',
                    'assets/images/2.jpg'),
                peopleList('Raihan Fikri', 'raihanfikri@gmail.com',
                    'assets/images/3.jpg'),
                peopleList('Raihan Fikri', 'raihanfikri@gmail.com',
                    'assets/images/3.jpg'),
                peopleList('Raihan Fikri', 'raihanfikri@gmail.com',
                    'assets/images/3.jpg'),
                peopleList('Raihan Fikri', 'raihanfikri@gmail.com',
                    'assets/images/3.jpg'),
              ],
            ),
          )),
    );
  }

  peopleList(String name, String email, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 90,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            5,
          ),
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
            child: Row(
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: ClipOval(
                    child: Image(
                      image: AssetImage(
                        imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                horizontalSpace(5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    AutoSizeText(
                      email,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
        ]),
      ),
    );
  }
}
