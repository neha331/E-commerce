import 'package:flutter/material.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
      child: TextFormField(
        onChanged: (value) {},
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFF979797).withOpacity(0.1),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          border: InputBorder.none,
         // enabledBorder: searchOutlineInputBorder,
          hintText: "Search product",
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    ),
      
    );
  }
}
