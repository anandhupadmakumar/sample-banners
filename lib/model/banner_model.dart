class BannerData {
  String? sId;
  String? url;
  bool? isDeleted;
  String? createdAt;
  String? updatedAt;
  int? iV;

  BannerData(
      {this.sId,
      this.url,
      this.isDeleted,
      this.createdAt,
      this.updatedAt,
      this.iV});

  BannerData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    url = json['url'];
    isDeleted = json['isDeleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['_id'] = sId;
    data['url'] = url;
    data['isDeleted'] = isDeleted;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}