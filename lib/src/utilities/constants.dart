import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

enum FetchType { All, Coding, Knowledge, Links, PersonalData, Project, Skills }

class FontFamily {

  FontFamily._();

  static const poppins = 'Poppins';
}

class Constants {

  Constants._();

  static const defaultPadding = 20.0;
  static const defaultDuration = Duration(seconds: 1); // we use it on our animation
  static const smallDuration = Duration(milliseconds: 250); // we use it on our animation
  static const maxWidth = 1440.0; // max width of our web

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  FirebaseAuth auth = FirebaseAuth.instance;

  String get countString => 'count';

  String get codingString => 'coding';

  String get nameString => 'name';

  String get percentageString => 'percentage';

  String get positionString => 'position';

  String get knowledgeString => 'knowledges';

  String get activeString => 'active';

  String get linksString => 'links';

  String get personalDataString => 'personal_data';

  String get ageString => 'age';

  String get educationString => 'education';

  String get imageString => 'image';

  String get roleString => 'role';

  String get skillsString => 'skills';

  String get urlString => 'url';

  String get residenceString => 'residence';

}