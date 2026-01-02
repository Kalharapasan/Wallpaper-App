import 'package:wallpaper_app/model/categories_model.dart';

List<CategoriesModel> getCategories() {
  List<CategoriesModel> categories = <CategoriesModel>[];
  CategoriesModel categoriesModel;

  // Street Art
  categoriesModel = CategoriesModel();
  categoriesModel.imgUrl = "https://images.pexels.com/photos/543888/pexels-photo-543888.jpeg";
  categoriesModel.categoriesName = "Street Art";
  categories.add(categoriesModel);

  // Wild Life
  categoriesModel = CategoriesModel();
  categoriesModel.imgUrl = "https://images.pexels.com/photos/784329/pexels-photo-784320.jpeg";
  categoriesModel.categoriesName = "Wild Life";
  categories.add(categoriesModel);

  // Nature
  categoriesModel = CategoriesModel();
  categoriesModel.imgUrl = "https://images.pexels.com/photos/34589/pexels-photo-34589.jpeg";
  categoriesModel.categoriesName = "Nature";
  categories.add(categoriesModel);

  // City
  categoriesModel = CategoriesModel();
  categoriesModel.imgUrl = "https://images.pexels.com/photos/466659/pexels-photo-466659.jpeg";
  categoriesModel.categoriesName = "City";
  categories.add(categoriesModel);

  // Motivation
  categoriesModel = CategoriesModel();
  categoriesModel.imgUrl = "https://images.pexels.com/photos/1434819/pexels-photo-1434819.jpeg";
  categoriesModel.categoriesName = "Motivation";
  categories.add(categoriesModel);

  // Bikes
  categoriesModel = CategoriesModel();
  categoriesModel.imgUrl = "https://images.pexels.com/photos/1154819/pexels-photo-1154819.jpeg";
  categoriesModel.categoriesName = "Bikes";
  categories.add(categoriesModel);

  // Cars
  categoriesModel = CategoriesModel();
  categoriesModel.imgUrl = "https://images.pexels.com/photos/2115075/pexels-photo-2115075.jpeg";
  categoriesModel.categoriesName = "Cars";
  categories.add(categoriesModel);

  // Girls
  categoriesModel = CategoriesModel();
  categoriesModel.imgUrl = "https://images.pexels.com/photos/1149137/pexels-photo-1149137.jpeg";
  categoriesModel.categoriesName = "Girls";
  categories.add(categoriesModel);

  return categories;
}