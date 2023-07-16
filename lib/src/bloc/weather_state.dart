import 'package:flutter_weather/src/model/weather.dart';
import 'package:equatable/equatable.dart';

abstract class WeatherState extends Equatable {
  WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherEmpty extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final Weather? weather;

  WeatherLoaded({this.weather});
}

class WeatherError extends WeatherState {
  final int errorCode;

  WeatherError({required this.errorCode});

  @override
  List<Object> get props => [errorCode];
}
