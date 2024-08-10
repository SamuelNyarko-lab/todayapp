import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todayapp/helpers/helpers.dart';

class ReportScreen extends StatelessWidget {
  ReportScreen({super.key});
  List<String> months = [
    "Download All",
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ),
            ],
          ),
          child: IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_left_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              // Add your onPressed code here!
            },
          ),
        ), // This is to remove the default title spacing
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 16),
            const AutoSizeText(
              "Reports",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            verticalSpace(10),
            Text.rich(
              TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 16),
                children: <InlineSpan>[
                  const TextSpan(
                    text:
                        'Find monthly statements of all your transactions on ',
                  ),
                  const TextSpan(
                    text: 'Arto+',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const TextSpan(
                      text:
                          ' for the past 3 years. To see a statement for any date range, request a '),
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: () async {},
                      child: const Text(
                        'custom statement.',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(10),
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Search',
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
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
                  horizontalSpace(15),
                  Expanded(
                    child: DropdownButtonFormField(
                      items: ['Year', 'Year2']
                          .map((itemValue) => DropdownMenuItem(
                                value: itemValue,
                                child: Text(itemValue),
                              ))
                          .toList(),
                      onChanged: (value) {
                        if (kDebugMode) {
                          print(value);
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10,
                            ),
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AutoSizeText(
                  "2023",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_up_outlined),
                )
              ],
            ),
            verticalSpace(10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Container(
                child: ListTile(
                  leading: Text(
                    months[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  contentPadding: EdgeInsets.zero,
                  trailing: Container(
                    width: 30.0,
                    height: 30.0,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(236, 237, 242, 1),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      padding: EdgeInsetsDirectional.zero,
                      icon: const Icon(
                        Icons.file_download_outlined,
                      ),
                      iconSize: 25,
                      color: Colors.black,
                    ),
                  ),
                  shape: const Border(
                      bottom: BorderSide(
                    color: Color.fromRGBO(215, 217, 223, 1),
                  )),
                ),
              ),
              itemCount: months.length,
            )
          ]),
        ),
      ),
      floatingActionButton: MaterialButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return Container(
                    padding: const EdgeInsets.all(10),
                    height: deviceHeight(context) / 1.2,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const AutoSizeText(
                                "Custom Reports",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: 30.0,
                                height: 30.0,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(236, 237, 242, 1),
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  padding: EdgeInsetsDirectional.zero,
                                  icon: const Icon(
                                    Icons.close,
                                  ),
                                  iconSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          verticalSpace(10),
                          Container(
                            padding: const EdgeInsets.only(
                              right: 15,
                            ),
                            // width: deviceWidth(context) / 1.1,
                            child: const AutoSizeText(
                              "You can set a date to choose which report you want to download",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          verticalSpace(10),
                          const AutoSizeText(
                            "Your balance",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          verticalSpace(10),
                          const AutoSizeText(
                            "File format",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          verticalSpace(10),
                          const AutoSizeText(
                            "Start Date",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          verticalSpace(10),
                          const AutoSizeText(
                            "End Date",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          verticalSpace(10),
                          const AutoSizeText(
                            "Statemment Language",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: deviceWidth(context),
                            child: DropdownButtonFormField(
                              items: ['Year', 'Year2']
                                  .map((itemValue) => DropdownMenuItem(
                                        value: itemValue,
                                        child: Text(itemValue),
                                      ))
                                  .toList(),
                              onChanged: (value) {
                                if (kDebugMode) {
                                  print(value);
                                }
                              },
                              iconDisabledColor: Colors.white,
                              iconEnabledColor: Colors.white,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      10,
                                    ),
                                  ),
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 16.0),
                                suffixIcon: SizedBox.shrink(),
                              ),
                            ),
                          ),
                          verticalSpace(10),
                        ],
                      ),
                    ));
              });
        },
        color: Colors.black,
        height: 50,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
          50,
        )),
        child: (const AutoSizeText(
          'Custom Report',
          style: TextStyle(color: Colors.white),
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
