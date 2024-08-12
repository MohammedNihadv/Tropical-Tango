import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class AdSpace extends StatelessWidget {
  const AdSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
         child: Image.asset('assets/images/app_adbar.jpg',fit: BoxFit.contain,),
      ),
    );
  }
}
