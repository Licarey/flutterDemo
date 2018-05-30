// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Thanks for checking out Flutter!
// Like what you see? Tweet us @flutterio

import 'package:flutter/material.dart';
import 'package:flutter_gallery/Test.dart';

import 'gallery/app.dart';

void main() {
  // Overriding https://github.com/flutter/flutter/issues/13736 for better
  // visual effect at the cost of performance.
  MaterialPageRoute.debugEnableFadingRoutes = true; // ignore: deprecated_member_use
  //runApp(const GalleryApp());
  runApp(new MaterialApp(
    title: 'Passing Data',
    home: new SampleApp(
      todos: new List.generate(
        20,
            (i) => new Todo(
          'Todo $i',
          'A description of what needs to be done for Todo $i',
        ),
      ),
    ),
  ));
}
