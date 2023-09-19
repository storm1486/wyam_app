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
    Amenities(location: 'Location 1', hours: '7:00 am - 8:00 pm', image: '1.png'),
    Amenities(location: 'Location 2', hours: '24 hours', image: 'south_korea.png'),
    Amenities(location: 'Location 3', hours: '10:00 am - 3:00 pm', image: '1.png'),
    Amenities(location: 'Location 4', hours: '12:00 pm - 9:00 pm', image: 'uk.png'),
    Amenities(location: 'Location 5', hours: '7:00 am - 10:00 pm', image: '1.png'),
    Amenities(location: 'Location 6', hours: '5:00 am - 2:00 am', image: 'usa.png'),
    Amenities(location: 'Location 7', hours: '2:00 pm - 11:00 pm', image: 'south_korea.png'),
    Amenities(location: 'Location 8', hours: '1:00 pm - 5:00 pm', image: '1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
              children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                        child: Text(
                            'Sort by',
                            style: TextStyle(fontSize: 20.0),
                          ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
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
                              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Stack(
                                      children: [
                                        Container(
                                        height: 100,
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
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                          onTap: () {},

                                          title: Padding(
                                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                            child: Text(locations[index].location, style: TextStyle(fontSize: 20)),
                                            ),
                                          subtitle: Padding(
                                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                // Text(locations[index].address),
                                                // Text(locations[index].distance),
                                                Text(locations[index].hours),
                                              ],
                                            ),
                                          ),
                                          tileColor: Colors.transparent,
                                          contentPadding: EdgeInsets.zero,
                                        ),
                                      ),
                                        Positioned(
                                          top: 10,
                                          right: 10,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Container(
                                              color: Colors.blue,
                                              child: const Padding(
                                                padding: EdgeInsets.all(6.0),
                                                child: Text(" Available", style: TextStyle(fontSize: 12),),
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
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
