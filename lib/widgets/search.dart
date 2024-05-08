import 'package:ekocotam_clima/theme/app_color.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.text = 'Morro do gama';
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: false,
      controller: _searchController,
      cursorColor: AppColors.textColor,
      style: TextStyle(
        color: AppColors.textColor,
        fontFamily: 'Inter',
        fontSize: 18,
      ),
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.textColor,
            width: 2.0,
          ),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.textColor,
            width: 2.0,
          ),
        ),
        prefixIcon: Icon(
          Icons.search,
          color: AppColors.textColor,
        ),
      ),
    );
  }
}
