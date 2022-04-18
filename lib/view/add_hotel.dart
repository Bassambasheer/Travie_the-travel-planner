import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travie/bloc/hotels_bloc_bloc.dart';
import 'package:travie/widgets/txtbox.dart';

class AddHotels extends StatelessWidget {
const  AddHotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelsBlocBloc, HotelsBlocState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                TxtField(
                    hint: "Hotel Name", pass: false, controller: state.name),
                TxtField(
                    hint: "Location", pass: false, controller: state.location),
                TxtField(hint: "Amount", pass: false, controller: state.amount),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<HotelsBlocBloc>().add(AddHotelEvent(
                          hotelName: state.name.text,
                          location: state.location.text,
                          price: state.amount.text));
                           context.read<HotelsBlocBloc>().add(GetAllHotelEvent());
                      Navigator.pop(context);
                    },
                    child: const Text("Add"),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
