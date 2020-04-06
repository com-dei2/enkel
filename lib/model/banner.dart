class ModelBanner {
  int status;
  String message;
  Data data;

  ModelBanner({this.status, this.message, this.data});

  ModelBanner.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  List<Category> category;

  Data({this.category});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['category'] != null) {
      category = new List<Category>();
      json['category'].forEach((v) {
        category.add(new Category.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.category != null) {
      data['category'] = this.category.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Category {
  String cover;
  String type;
  String url;
  String title;
  int sort;

  Category({this.cover, this.type, this.url, this.title, this.sort});

  Category.fromJson(Map<String, dynamic> json) {
    cover = json['cover'];
    type = json['type'];
    url = json['url'];
    title = json['title'];
    sort = json['sort'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cover'] = this.cover;
    data['type'] = this.type;
    data['url'] = this.url;
    data['title'] = this.title;
    data['sort'] = this.sort;
    return data;
  }
}
