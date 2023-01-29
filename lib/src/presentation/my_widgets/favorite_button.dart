import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key, required this.isFavorite});
  final bool isFavorite;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  late bool isFavorite;

  @override
  void initState() {
    isFavorite = widget.isFavorite;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: isFavorite ? const Icon(Icons.favorite, color: Colors.red, size: 30,)
      : const Icon(Icons.favorite_border, color: Colors.red, size: 30,),

      onTap: () async {
        print("isFavorite $isFavorite");

        if(!isFavorite){
          setState(() {
            isFavorite = !isFavorite;
          });
          
        }else{
          setState(() {
            isFavorite = !isFavorite;
          });
        }
      },
    );
  }
}