class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categoriesList = [
  Category(
    title: "Drive Mode",
    image: "images/launcher_images/icn_drive_mode.png",
  ),
  Category(
    title: "Themes",
    image: "images/launcher_images/icn_themes.png",
  ),
  Category(
    title: "Climate",
    image: "images/launcher_images/icn_climate.png",
  ),
  Category(
    title: "Android Auto",
    image: "images/launcher_images/icn_android_auto.png",
  ),
  Category(
    title: "Play Store",
    image: "images/launcher_images/icn_play_store.png",
  ),
  Category(
    title: "Vehicle Info",
    image: "images/launcher_images/icn_vehicle_info.png",
  ),
  Category(
    title: "Camera",
    image: "images/launcher_images/icn_camera.png",
  ),
  Category(
    title: "Phone",
    image: "images/launcher_images/icn_calls.png",
  ),
  Category(
    title: "Energy",
    image: "images/launcher_images/icn_energy.png",
  ),
  Category(
    title: "ChargeAssist",
    image: "images/launcher_images/icn_charging.png",
  ),
];
