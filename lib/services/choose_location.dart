import 'package:flutter/material.dart';
import 'package:wyam_app/services/amenities.dart';
import 'package:wyam_app/services/horizontalScroller.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  List<Amenities> locations = [
    Amenities(location: 'Europe/London', hours: 'London', image: '1.png'),
    Amenities(location: 'Europe/Londons', hours: 'Londons', image: 'south_korea.png'),
    Amenities(location: 'Europe/Londond', hours: 'Londond', image: '1.png'),
    Amenities(location: 'Europe/Londoen', hours: 'Londoen', image: 'uk.png'),
    Amenities(location: 'Europe/Londofn', hours: 'Londofn', image: '1.png'),
    Amenities(location: 'Europe/Londogn', hours: 'Londogn', image: 'usa.png'),
    Amenities(location: 'Europe/Londosn', hours: 'Londosn', image: 'south_korea.png'),
    Amenities(location: 'Europe/Londdon', hours: 'Londdon', image: '1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: SingleChildScrollView(
        child: Column(
              children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                        child: Text(
                            'Sort by',
                            style: TextStyle(fontSize: 20.0),
                          ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                          child: HorizontalScroller(
                            //ways to sort the location list
                                items: [
                                  'Distance',
                                  'Type',
                                  'Availability',
                                ]),
                        ),
                      ),
                    ],
                  ),
                    ListView.builder(
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: locations.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                                child: Card(
                                  child: Container(
                                      // background image for each card
                                      // decoration: BoxDecoration(
                                      //   image: DecorationImage(
                                      //     image: AssetImage('assets/${locations[index].image}'),
                                      //     fit: BoxFit.fill,
                                      //     colorFilter: ColorFilter.mode(
                                      //       Colors.black.withOpacity(0.75),
                                      //       BlendMode.dstATop,
                                      //     )
                                      //   ),
                                      // ),
                                    child: ListTile(
                                        onTap: () {},
                                        title: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(locations[index].location),
                                        ),
                                        tileColor: Colors.transparent,
                                        contentPadding: EdgeInsets.zero,
                                        // leading: CircleAvatar(
                                        //   backgroundImage: AssetImage('assets/${locations[index].flag}'),
                                        // )
                                    ),
                                  ),
                                ),
                            );
                          },
                        ),
              ],
            ),
      ),
    );
  }
}
