import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app/app.dart';

// Adding ProviderScope enables Riverpod for the entire project
void main() => runApp(const ProviderScope(child: MyApp()));
