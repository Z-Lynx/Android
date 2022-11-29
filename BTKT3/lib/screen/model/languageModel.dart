class Language {
  final int id;
  final String name;
  final String icon;

  Language({
    required this.id,
    required this.name,
    required this.icon,
  });
}

List<Language> menuLanguage = [
  Language(id: 0, name: "VIỆT NAM", icon: "assets/vietnam.png"),
  Language(id: 1, name: "ÚC", icon: "assets/australia.png"),
  Language(id: 2, name: "MỸ", icon: "assets/united-states.png"),
  Language(id: 3, name: "PHÁP", icon: "assets/france.png"),
  Language(id: 4, name: "NHẬT", icon: "assets/japan.png"),
  Language(id: 5, name: "ANH", icon: "assets/united-kingdom.png"),
  Language(id: 6, name: "TRUNG QUỐC", icon: "assets/china.png")
];
