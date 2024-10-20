import 'package:flutter/material.dart';
import 'package:random_dice/const/colors.dart';

class SettingsScreen extends StatelessWidget {
  final double threshold;   // Slider 현재값

  // Slider 변경될 때마다 실행되는 함수
  final ValueChanged<double> onThresholdChange;

  const SettingsScreen({Key? key,
    // threshold 와 onThreshold 는 SettingsScreen 에서 입력
    required this.threshold,
    required this.onThresholdChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Text(
                '민감도',
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Slider(
          min: 0.1,         // 최소값
          max: 10.0,        // 최대값
          divisions: 101,   // 최소값과 최대값 사이 구간 개수
          value: threshold, // 슬라이더 선택값
          onChanged: onThresholdChange,   // 값 변경 시 실행되는 함수
          label: threshold.toStringAsFixed(1),  // 표시값
        ),
      ],
    );
  }
}