import 'package:flutter/material.dart';

class FavouriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Favourite Contacts'),
        IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: () {},
        ),
      ],
    );
  }
}
