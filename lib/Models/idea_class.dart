import 'dart:ui';

class Idea {
  int id;
  String title;
  String subtitle;
  String description;
  Color color;
  String dateAdded;


  ideaMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id;
    mapping['title'] = title;
    mapping['subtitle'] = subtitle;
    mapping['description'] = description;
   // mapping['color'] = getColor;
    mapping['dateAdded'] = dateAdded;

    return mapping;
  }
  /**
   * getter functions
   */
  // Idea(this.title, this.subtitle, this.description, this.color, this.dateAdded);


  Color getColor() => color;

  String getDescription() {
    return description;
  }
  String getTitle() {
    return title;
  }
  String getSubtitle() {
    return subtitle;
  }


  /**
   * setter functions
   */
  void setDescription(String value) {
    description = value;
  }

  void setSubtitle(String value) {
    subtitle = value;
  }

  void setTitle(String value) {
    title = value;
  }
}