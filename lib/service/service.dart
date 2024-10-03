import 'dart:convert';
import 'dart:io';

import 'package:food_app/model/models.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:http/http.dart' as http;

part 'user_services.dart';
part 'transaction_servieces.dart';
part 'food_services.dart';

String baseUrl = 'https://food.rtid73.com/api';