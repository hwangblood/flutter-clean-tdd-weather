import 'package:dartz/dartz.dart';

import 'package:clean_tdd_weather/core/error/failure.dart';
import 'package:clean_tdd_weather/domain/entities/weather.dart';
import 'package:clean_tdd_weather/domain/repositories/weather_repository.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository _weatherRepository;

  GetCurrentWeatherUseCase(this._weatherRepository);

  Future<Either<Failure, WeatherEntity>> execute(String cityName) {
    return _weatherRepository.getCurrentWeather(cityName);
  }
}
