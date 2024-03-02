// ignore_for_file: use_build_context_synchronously, avoid_print

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<StatefulWidget> createState() => _WebTestOsmState();
}

class _WebTestOsmState extends State<MapScreen> with OSMMixinObserver {
  late final MapController controller = MapController(
    // initPosition: GeoPoint(
    //   latitude: 44.01753206961715,
    //   longitude: 42.868008613586426,
    // )
    initPosition: GeoPoint(
      latitude: 47.4358055,
      longitude: 8.4737324,
    ),
  );
  final Key key = GlobalKey();

  ValueNotifier<bool> activateCollectGetGeoPointsToDraw = ValueNotifier(false);
  ValueNotifier<bool> activateDrawRoad = ValueNotifier(false);

  ValueNotifier<List<GeoPoint>> roadPoints = ValueNotifier([]);
  ValueNotifier<bool> isTracking = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    controller.addObserver(this);
    controller.listenerMapSingleTapping.addListener(onMapSingleTap);

    controller.listenerRegionIsChanging.addListener(() {
      if (controller.listenerRegionIsChanging.value != null) {
      }
    });
  }

  void onMapSingleTap() async {
    if (controller.listenerMapSingleTapping.value != null) {
      final GeoPoint geoPoint = controller.listenerMapSingleTapping.value!;
      await controller.addMarker(
        geoPoint,
        markerIcon: const MarkerIcon(
          icon: Icon(Icons.push_pin),
        ),
      );
      if (activateCollectGetGeoPointsToDraw.value) {
        roadPoints.value = roadPoints.value..add(geoPoint);
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              await controller.currentLocation();
            },
            icon: const Icon(Icons.location_history),
          ),
          // IconButton(
          //   onPressed: () async {
          //     if (!activateCollectGetGeoPointsToDraw.value &&
          //         roadPoints.value.isEmpty) {
          //       activateCollectGetGeoPointsToDraw.value = true;
          //     } else if (activateCollectGetGeoPointsToDraw.value &&
          //         roadPoints.value.isNotEmpty) {
          //       await controller.drawRoad(
          //         roadPoints.value.first,
          //         roadPoints.value.last,
          //         roadOption: const RoadOption(
          //           zoomInto: true,
          //           roadColor: Colors.red,
          //         ),
          //       );
          //       activateCollectGetGeoPointsToDraw.value = false;
          //       roadPoints.value = roadPoints.value..clear();
          //     }
          //   },
          //   icon: const Icon(Icons.map_outlined),
          // ),
          IconButton(
            onPressed: () async {
              if (isTracking.value) {
                await controller.disabledTracking();
              }
              if (!isTracking.value) {
                await controller.currentLocation();
                await controller.enableTracking();
              }
              isTracking.value = !isTracking.value;
            },
            icon: ValueListenableBuilder<bool>(
              valueListenable: isTracking,
              builder: (ctx, tracking, _) {
                return Icon(
                  tracking ? Icons.location_disabled : Icons.my_location,
                  color: tracking ? Colors.white : Colors.white,
                );
              },
            ),
          ),
          /*
          IconButton(
            onPressed: () async {
              // final encoded = "mfp_I__vpAqJ`@wUrCa\\dCgGig@{DwWq@cf@lG{m@bDiQrCkGqImHu@cY`CcP@sDb@e@hD_LjKkRt@InHpCD`F";
              /*


              */

              /* final list = await encoded.toListGeo();
              await controller.drawRoadManually(
                list,
                interestPointIcon: MarkerIcon(
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.orange,
                    size: 32,
                  ),
                ),
                interestPoints: list.getRange(1, 6).toList(),
                zoomInto: true,
              );*/
              activateCollectGetGeoPointsToDraw.value =
                  !activateCollectGetGeoPointsToDraw.value;
            },
            icon: Icon(Icons.add_road),
          ),*/
        ],
      ),
      body: Builder(
        builder: (ctx) {
          return OSMFlutter(
            key: key,
            controller: controller,
            osmOption: OSMOption(
              zoomOption: const ZoomOption(
                initZoom: 5,
              ),
              markerOption: MarkerOption(
                defaultMarker: const MarkerIcon(
                  icon: Icon(
                    Icons.add_location,
                    color: Colors.amber,
                  ),
                ),
              ),
              // staticPoints: [
              //   StaticPositionGeoPoint(
              //     "line 1",
              //     const MarkerIcon(
              //       icon: Icon(
              //         Icons.train,
              //         color: Colors.green,
              //         size: 48,
              //       ),
              //     ),
              //     [
              //       GeoPoint(latitude: 47.4333594, longitude: 8.4680184),
              //       GeoPoint(latitude: 47.4317782, longitude: 8.4716146),
              //     ],
              //   ),
              //   // StaticPositionGeoPoint(
              //   //   "line 2",
              //   //   null,
              //   //   [
              //   //     GeoPoint(
              //   //       latitude: 44.01753206961715,
              //   //       longitude: 42.868008613586426,
              //   //     )
              //   //   ],
              //   // )
              // ],
              showContributorBadgeForOSM: true,
            ),
            onGeoPointClicked: (geoPoint) async {
              if (geoPoint ==
                  GeoPoint(latitude: 47.442475, longitude: 8.4680389)) {
                await controller.setMarkerIcon(
                  geoPoint,
                  const MarkerIcon(
                    icon: Icon(
                      Icons.dangerous,
                      color: Colors.blue,
                      size: 24,
                    ),
                  ),
                );
              }
              ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                content: Text(
                  geoPoint.toString(),
                ),
                action: SnackBarAction(
                  label: "hide",
                  onPressed: () {
                    ScaffoldMessenger.of(ctx).hideCurrentSnackBar();
                  },
                ),
              ));
            },
            mapIsLoading: const Center(
              child: Text("map is Loading"),
            ),
          );
        },
      ),
    );
  }

  @override
  Future<void> mapIsReady(bool isReady) async {
    if (isReady) {
      await controller.changeLocation(
        GeoPoint(
          latitude: 47.433358,
          longitude: 8.4690184,
        ),
      );
      await controller.setZoom(zoomLevel: 12);

      double zoom = await controller.getZoom();
       print("zoom:$zoom");
      // await controller.addMarker(
      //   GeoPoint(latitude: 47.442475, longitude: 8.4680389),
      //   markerIcon: const MarkerIcon(
      //     icon: Icon(
      //       Icons.car_repair,
      //       color: Colors.black45,
      //       size: 48,
      //     ),
      //   ),
      // );
      // await controller.setMarkerOfStaticPoint(
      //   id: "line 2",
      //   markerIcon: const MarkerIcon(
      //     icon: Icon(
      //       Icons.train,
      //       color: Colors.orange,
      //       size: 48,
      //     ),
      //   ),
      // );

      // await controller.setStaticPosition(
      //   [
      //     GeoPointWithOrientation(
      //       latitude: 47.4433594,
      //       longitude: 8.4680184,
      //       angle: pi / 4,
      //     ),
      //     GeoPointWithOrientation(
      //       latitude: 47.4517782,
      //       longitude: 8.4716146,
      //       angle: pi / 2,
      //     ),
      //   ],
      //   "line 2",
      // );
    }
  }
}
