import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todayapp/helpers/helpers.dart';

class ReportScreen extends StatelessWidget {
  ReportScreen({super.key});
  List<String> months = [
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
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Container(
                child: ListTile(
                  leading: Text(
                    months[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  contentPadding: EdgeInsets.zero,
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.file_download_outlined,
                    ),iconSize: 20,
                    color: Colors.grey,
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.red),
                    ),
                  ),
                ),
              ),
              itemCount: months.length,
            )
          ]),
        ),
      ),
      floatingActionButton: MaterialButton(
        onPressed: () {},
        color: Colors.black,
        height: 50,
        child: (AutoSizeText(
          'Custom Report',
          style: TextStyle(color: Colors.white),
        )),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
          50,
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
