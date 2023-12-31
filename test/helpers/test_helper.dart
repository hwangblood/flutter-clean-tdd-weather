import 'package:clean_tdd_weather/domain/repositories/weather_repository.dart';
import 'package:mockito/annotations.dart';

import 'package:http/http.dart' as http;

@GenerateMocks(
  [WeatherRepository],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)
void main() {}
