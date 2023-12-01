import 'package:injectable/injectable.dart';
import 'package:weather_app/data/datasource/local/favorite_data_box.dart';
import 'package:weather_app/data/model/models.dart';

@lazySingleton
class FavoriteForecastLocalDataSource {
  final FavoriteDataBox _dataBox;

  FavoriteForecastLocalDataSource(this._dataBox);

  Future<List<WeatherForecastModel>> getFavoriteList() async {
    return _dataBox.allData;
  }

  Future<void> persistData(WeatherForecastModel data) async {
    final url = data.location.url;
    if (url != null) {
      await _dataBox.setValue(url, data);
    }
  }

  Future<void> remove(String weatherLocation) async {
    await _dataBox.delete(weatherLocation);
  }
}
