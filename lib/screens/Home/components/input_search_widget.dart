import 'package:flutter/material.dart';
import '../../../contants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: ConstPadding / 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ConstPadding / 4),
        color: Color(0xFFEEEEEE),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ConstPadding / 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/icons/search.svg',
              color: Color(0x88444444),
            ),
            SizedBox(width: 18),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  focusColor: Colors.red,
                  hintText: 'What Pokémon are you looking for?',
                  hintStyle: TextStyle(
                    color: ConstTextColor.withOpacity(0.8),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
