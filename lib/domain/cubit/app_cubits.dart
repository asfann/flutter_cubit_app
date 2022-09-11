import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/data_model.dart';
import '../services/data_services.dart';
import 'app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.dataServices}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices dataServices;
  late final places;
  void getData() async {
    try {
      emit(LoadingState());
      places = await dataServices.getInfo();
      emit(LoadedState(places));

    } catch (e) {

    }
  }


  detailPage(DataModel data){
    emit(DetailState(data));
  }


  goHome(){
    emit(LoadedState(places));
  }
}
