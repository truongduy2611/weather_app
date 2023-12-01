import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/model/weather_forecast_model.dart';

import '../../fixtures_reader.dart';

void main() {
  final fixture = 'current.json'.toFixture();
  final weatherForecastModel = WeatherForecastModel.fromJson(fixture);
  group('test weather forecast model', () {
    test(
      'should return correct data from json',
      () {
        final model = weatherForecastModel;
        final current = fixture['current'];
        expect(model.current.humidity, current['humidity']);
        expect(model.current.lastUpdated, current['last_updated']);
        expect(model.current.lastUpdatedEpoch, current['last_updated_epoch']);
        expect(model.current.uv, current['uv']);
        expect(model.current.tempC, current['temp_c']);
        expect(model.current.tempF, current['temp_f']);
        expect(model.current.cloud, current['cloud']);
        expect(model.current.feelsLikeC, current['feelslike_c']);
        expect(model.current.condition.code, current['condition']['code']);
        expect(model.current.condition.icon, current['condition']['icon']);
      },
    );

    test(
      'should return correct entity from json',
      () {
        final entity = weatherForecastModel.toEntity();
        final current = fixture['current'];
        expect(entity.current.humidity, current['humidity']);
        expect(entity.current.lastUpdated, current['last_updated']);
        expect(entity.current.lastUpdatedEpoch, current['last_updated_epoch']);
        expect(entity.current.uv, current['uv']);
        expect(entity.current.tempC, current['temp_c']);
        expect(entity.current.tempF, current['temp_f']);
        expect(entity.current.cloud, current['cloud']);
        expect(entity.current.feelsLikeC, current['feelslike_c']);
        expect(entity.current.condition.code, current['condition']['code']);
        expect(entity.current.condition.icon, current['condition']['icon']);
      },
    );
  });
}
