import 'package:flutter/material.dart';
import 'package:static_travels_app/data/categori_data.dart';
import 'package:static_travels_app/model/category_model.dart';
import 'package:static_travels_app/model/popular_travels_models.dart';
import 'package:static_travels_app/screen/details/travel_details_screen.dart';
import 'package:static_travels_app/services/travel_filter_service.dart';
import 'package:static_travels_app/widgets/home/card_popular_explore_grid.dart';
import 'package:static_travels_app/widgets/home/destination_card.dart';

import '../../model/explore_travels_model.dart';

class ExploreTravelsScreen extends StatefulWidget {
  const ExploreTravelsScreen({super.key});

  @override
  State<ExploreTravelsScreen> createState() => _ExploreTravelsScreenState();
}

class _ExploreTravelsScreenState extends State<ExploreTravelsScreen> {

  final List<CategoryModel> categories = CategoriData.categories;
  int selectedCategoryIndex = 0;
  String searchQuery = '';

  String get _selectedCategoryId => categories[selectedCategoryIndex].id;


  List<PopularTravelsModels> get _filteredPopular =>
      TravelFilterService.filterPopular(
        categoryId: _selectedCategoryId,
        searchQuery: searchQuery,
      );

  List<ExploreTravelsModel> get _filteredExplore =>
      TravelFilterService.filterExplore(
        categoryId: _selectedCategoryId,
        searchQuery: searchQuery,
      );



  void _openDetails({
    required String imageUrl,
    required String title,
    required String location,
    required double rating,
    required String details,
    required String videoUrl,
    required String duration,
    required String price,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => TravelDetailsScreen(
          imageUrl: imageUrl,
          title: title,
          location: location,
          rating: rating,
          details: details,
          videoUrl: videoUrl,
          duration: duration,
          price: price,
        ),
      ),
    );
  }





  @override
  Widget build(BuildContext context) {



    final popularCards = _filteredPopular
        .map((item) => DestinationCard(
      imageUrl: item.imageUrl,
      title: item.title,
      location: item.location,
      rating: item.rating,
      onTap: () => _openDetails(
        imageUrl: item.imageUrl,
        title: item.title,
        location: item.location,
        rating: item.rating,
        details: item.details,
        videoUrl: item.videoUrl,
        duration: item.duration,
        price: item.price,
      ),
    ))
        .toList();

    final exploreCards = _filteredExplore
        .map((item) => DestinationCard(
      imageUrl: item.imageUrl,
      title: item.title,
      location: item.category,
      rating: item.rating,
      onTap: () => _openDetails(
        imageUrl: item.imageUrl,
        title: item.title,
        location: item.category,
        rating: item.rating,
        details: item.details,
        videoUrl: item.videoUrl,
        duration: item.duration,
        price: item.price,
      ),
    ))
        .toList();


    return  Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xFFF9FBF9),
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text('ভ্রমণ অনুসন্ধান করুন', style: TextStyle(color: Colors.black)),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [

              CardPopularExploreGrid(cards: exploreCards),
            ],
          ),
        ),
      ),

    );
  }
}
