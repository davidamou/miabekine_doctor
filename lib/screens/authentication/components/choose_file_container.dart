import 'package:flutter/material.dart';

import '../../../utils/themes/light.dart';

class ChooseFileContainer extends StatelessWidget {
  const ChooseFileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        width: double.infinity,
        height: 120.0,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: defaultBorderRadius,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.upload_file_rounded,
              color: primarySwatch.shade300,
            ),
            const SizedBox(height: 8.0),
            Text(
              "PDF - PNG - JPEG - JPG",
              style: TextStyle(color: primarySwatch.shade600),
            ),
          ],
        ),
      ),
    );
  }
}
