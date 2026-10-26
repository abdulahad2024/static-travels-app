import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:static_travels_app/data/categori_data.dart';
import 'package:static_travels_app/model/category_model.dart';
import 'package:static_travels_app/model/explore_travels_model.dart';
import 'package:static_travels_app/model/popular_travels_models.dart';
import 'package:static_travels_app/services/travel_filter_service.dart';
import 'package:static_travels_app/widgets/home/card_gird.dart';
import 'package:static_travels_app/widgets/home/destination_card.dart';
import 'package:static_travels_app/widgets/home/explore_header.dart';
import 'package:static_travels_app/widgets/home/header_text.dart';
import 'package:static_travels_app/widgets/home/popular_row_header.dart';
import 'package:static_travels_app/widgets/home/simple_appbar.dart';

import '../details/travel_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


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

    return Scaffold(


      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xFFF9FBF9),
        elevation: 0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        titleSpacing: 20,
        title: SimpleAppBar(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFF0F4F1),
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(
                Ionicons.notifications,
                color: Colors.black87,
                size: 22,
              ),
            ),
          ),
        ],
      ),      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              HeaderText(),
              const SizedBox(height: 20),


              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F4F1),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    });
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 18),
                    hintText: 'ভ্রমণ অনুসন্ধান করুন',
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    border: InputBorder.none,
                    icon: Icon(Icons.search, color: Colors.grey.shade500),
                    suffixIcon: Icon(Icons.tune, color: Colors.grey.shade600),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    final bool isSelected = selectedCategoryIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 8),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFF1E5631)
                              : const Color(0xFFF0F4F1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            if (category.icon.isNotEmpty) ...[
                              Text(category.icon),
                              const SizedBox(width: 6),
                            ],
                            Text(
                              category.name,
                              style: TextStyle(
                                color:
                                isSelected ? Colors.white : Colors.black87,
                                fontWeight: isSelected
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 25),

              PopularRowHeader(),

              const SizedBox(height: 15),

              CardGrid(cards: popularCards),

              const SizedBox(height: 25),

              ExploreHeader(),

              const SizedBox(height: 15),

              CardGrid(cards: exploreCards),
            ],
          ),
        ),
      ),
    );
  }
}

