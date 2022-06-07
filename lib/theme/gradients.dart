import 'package:flutter/material.dart';
import 'colors.dart';

LinearGradient get backgroundLinearGradient => LinearGradient(
      colors: <Color>[
        backgroundGradientColor1,
        backgroundGradientColor2,
        backgroundGradientColor3,
      ],
      stops: const <double>[0, 0.5, 1],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

LinearGradient get primaryButtonLinearGradient => LinearGradient(
      colors: <Color>[
        primaryButtonGradient1,
        primaryButtonGradient2,
      ],
      stops: const <double>[0, 1],
    );

LinearGradient get secondaryButtonLinearGradient => LinearGradient(
      colors: <Color>[
        secondaryButtonGradient1,
        secondaryButtonGradient2,
      ],
      stops: const <double>[0, 1],
    );
