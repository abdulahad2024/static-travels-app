import 'package:static_travels_app/data/explore_travels_data.dart';
import 'package:static_travels_app/data/popular_travels_data.dart';
import 'package:static_travels_app/model/explore_travels_model.dart';
import 'package:static_travels_app/model/popular_travels_models.dart';

class TravelFilterService {


  static List<PopularTravelsModels> filterPopular({
    required String categoryId,
    required String searchQuery,
  }) {
    return _filter<PopularTravelsModels>(
      items: PopularTravelsData.popularTravels,
      categoryId: categoryId,
      searchQuery: searchQuery,
      getCategoryId: (item) => item.categoryId,
      getTitle: (item) => item.title,
    );
  }

  static List<ExploreTravelsModel> filterExplore({
    required String categoryId,
    required String searchQuery,
  }) {
    return _filter<ExploreTravelsModel>(
      items: ExploreTravelsData.exploreTravels,
      categoryId: categoryId,
      searchQuery: searchQuery,
      getCategoryId: (item) => item.categoryId,
      getTitle: (item) => item.title,
    );
  }

  static List<T> _filter<T>({
    required List<T> items,
    required String categoryId,
    required String searchQuery,
    required String Function(T item) getCategoryId,
    required String Function(T item) getTitle,
  }) {
    final query = searchQuery.trim().toLowerCase();
    final List<T> result = [];

    for (final item in items) {
      final matchCategory =
          categoryId == 'all' || getCategoryId(item) == categoryId;
      final matchSearch = getTitle(item).toLowerCase().contains(query);

      if (matchCategory && matchSearch) {
        result.add(item);
      }
    }

    return result;
  }
}