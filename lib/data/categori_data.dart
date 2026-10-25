import 'package:static_travels_app/model/category_model.dart';

class CategoriData {
  static List<CategoryModel> categories = [
    CategoryModel(id: 'all', name: 'সব', icon: ''),
    CategoryModel(id: 'beach', name: 'সৈকত', icon: '🏖️'),
    CategoryModel(id: 'hills', name: 'পাহাড়', icon: '🏔️'),
    CategoryModel(id: 'nature', name: 'প্রকৃতি', icon: '🌳'),
    CategoryModel(id: 'city', name: 'শহর', icon: '🏙️'),
    CategoryModel(id: 'mountains', name: 'পর্বত', icon: '⛰️'),
    CategoryModel(id: 'waterfalls', name: 'জলপ্রপাত', icon: '🌊'),
  ];
}