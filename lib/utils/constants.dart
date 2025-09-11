import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

const String envFile = String.fromEnvironment("ENV_FILE", defaultValue: ".env");
final bool staging = dotenv.getBool("STAGING");

const kDuration = Durations.short4;
const kCurve = Curves.easeIn;
