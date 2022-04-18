part of 'hotels_bloc_bloc.dart';

class HotelsBlocEvent {}

class AddHotelEvent extends HotelsBlocEvent {
  final String hotelName;
  final String location;
  final String price;
  AddHotelEvent(
      {required this.hotelName, required this.location, required this.price});
}
class GetAllHotelEvent extends HotelsBlocEvent{
}
