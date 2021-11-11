import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherlive/events/settings_events.dart';
import 'package:weatherlive/states/settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  //initial State
  SettingsBloc():super(SettingsState(temperatureUnit: TemperatureUnit.celsius));
  @override
  Stream<SettingsState> mapEventToState(SettingsEvent settingsEvent) async* {
    if(settingsEvent is SettingsEventToggleUnit) {
      //state = "settings state"
      final newSettingsState = SettingsState(
          temperatureUnit: state.temperatureUnit == TemperatureUnit.celsius ?
          TemperatureUnit.fahrenheit : TemperatureUnit.celsius
      );
      yield newSettingsState;
    }
  }
}