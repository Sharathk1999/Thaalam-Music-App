import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:thaalam_music_app/config/colors.dart';
import 'package:thaalam_music_app/controller/song_player_controller.dart';

class PlayVolumeContainer extends StatelessWidget {
  const PlayVolumeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
    return Obx(
      () => SfRadialGauge(
        animationDuration: 1,
        enableLoadingAnimation: true,
        axes: [
          RadialAxis(
            useRangeColorForAxis: true,
            startAngle: 0,
            endAngle: 180,
            canRotateLabels: false,
            interval: 10,
            isInversed: false,
            maximum: 1,
            minimum: 0,
            showAxisLine: true,
            showLabels: false,
            showTicks: true,
            ranges: [
              GaugeRange(
                startValue: 0,
                endValue: songPlayerController.volLevel.value,
                color: primaryColor.withOpacity(0.2),
              )
            ],
            pointers: [
              MarkerPointer(
                color: primaryColor,
                elevation: 2,
                value: songPlayerController.volLevel.value,
                onValueChanged: (val) {
                  songPlayerController.changeVol(val);
                },
                enableAnimation: true,
                enableDragging: true,
                markerType: MarkerType.diamond,
                markerWidth: 15,
                markerHeight: 15,
              )
            ],
            annotations: [
              GaugeAnnotation(
                horizontalAlignment: GaugeAlignment.center,
                angle: 10,
                positionFactor: 0.03,
                widget: Container(
                  width: 235,
                  height: 235,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/thaalam_bg_img.png"),
                        fit: BoxFit.cover),
                    color: boxColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
