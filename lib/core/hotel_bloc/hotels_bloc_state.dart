part of 'hotels_bloc_bloc.dart';

class HotelsBlocState {
  final TextEditingController name = TextEditingController();
  final TextEditingController location = TextEditingController();
  final TextEditingController amount = TextEditingController();
  final List<AddHotelModel> hotellist;
  HotelsBlocState({required this.hotellist});
}

class HotelsBlocInitial extends HotelsBlocState {
  HotelsBlocInitial({required List<AddHotelModel> hotellist})
      : super(hotellist: hotellist);
}
