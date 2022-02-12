 import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_weather_app/bloc/states.dart';
import 'package:simple_weather_app/dio_helper/dio_helper.dart';
import 'package:simple_weather_app/model/weather_model.dart';

class WeatherCubit extends Cubit<WeatherStates>{
  WeatherCubit() : super(WeatherInitialState());

  static WeatherCubit get(context) => BlocProvider.of(context);
var index;

void changeIndex(index)
{
  index=index;
  emit(ChangeIndexState());
}
List weatherdata=[];
  getWeatherData()
  {
    DioHelper.getData(
      url: "api/location/search/",
        query: {
        "query":"cairo",
          "latt_long":"latt_long",
        },
    ).then((value)
    {
      print(value.data.toString());
      weatherdata = value.data["query"];
      emit(GetWeatherDataSuccessState());
    }
    ).catchError((error)
    {
      print("eeeeee ${error.toString()}");
      emit(GetWeatherDataErrorState());
    });
  }

}