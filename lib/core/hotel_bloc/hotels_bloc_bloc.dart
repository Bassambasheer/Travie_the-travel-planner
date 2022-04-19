import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:travie/Api/data.dart';
import 'package:travie/model/add_hotel_model/add_hotel_model.dart';
part 'hotels_bloc_event.dart';
part 'hotels_bloc_state.dart';

class HotelsBlocBloc extends Bloc<HotelsBlocEvent, HotelsBlocState> {
  HotelsBlocBloc() : super(HotelsBlocState(hotellist: [])) {
    on<AddHotelEvent>((event, emit) async {
      final _newHotel = AddHotelModel.create(
          hotelName: event.hotelName,
          location: event.location,
          price: event.price);
      TravieDb().createHotel(_newHotel);
    });
    on<GetAllHotelEvent>((event, emit) async {
      final _hotelList = await TravieDb().getallHotels();
      state.hotellist.clear();
      state.hotellist.addAll(_hotelList);
      emit(HotelsBlocState(hotellist: state.hotellist));
    });
  }
}
