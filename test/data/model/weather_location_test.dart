import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/model/models.dart';

import '../../fixtures_reader.dart';

void main() {
  final data = 'search.json'.toFixture()["data"] as List<dynamic>;
  final locations = data.map((e) => WeatherLocationModel.fromJson(e)).toList();
  group('test weather location model', () {
    test(
      'should return correct data from json',
      () {
        final model = locations.first;
        final location = data.first;
        expect(model.country, location['country']);
        expect(model.id, location['id']);
        expect(model.lat, location['lat']);
        expect(model.lon, location['lon']);
        expect(model.name, location['name']);
        expect(model.region, location['region']);
      },
    );
  });
}
