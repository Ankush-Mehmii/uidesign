library ui_decoration;

import 'package:flutter/material.dart';

Decoration commentTileDecoration = BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey.shade200);

Decoration messageTileDecoration(Color color) =>
    BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          );                    