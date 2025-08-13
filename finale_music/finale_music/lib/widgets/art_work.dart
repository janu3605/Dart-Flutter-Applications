import 'package:flutter/material.dart';

class ArtWork extends StatelessWidget {
  final String image;
  const ArtWork({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height*.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(image))
      ),
    );
  }
}
