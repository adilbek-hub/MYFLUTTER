import 'package:flutter/material.dart';

class AsiaCountries extends StatefulWidget {
  const AsiaCountries({super.key});

  @override
  State<AsiaCountries> createState() => _AsiaCountriesState();
}

class _AsiaCountriesState extends State<AsiaCountries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AsiaCountries'),
      ),
    );
  }
}