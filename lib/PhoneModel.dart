class PhoneModel {
  PhoneModel({
      this.phones,});

  PhoneModel.fromJson(dynamic json) {
    if (json['phones'] != null) {
      phones = [];
      json['phones'].forEach((v) {
        phones?.add(Phones.fromJson(v));
      });
    }
  }
  List<Phones>? phones;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (phones != null) {
      map['phones'] = phones?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Phones {
  Phones({
      this.phoneCategory, 
      this.models,});

  Phones.fromJson(dynamic json) {
    phoneCategory = json['phoneCategory'];
    if (json['models'] != null) {
      models = [];
      json['models'].forEach((v) {
        models?.add(Models.fromJson(v));
      });
    }
  }
  String? phoneCategory;
  List<Models>? models;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['phoneCategory'] = phoneCategory;
    if (models != null) {
      map['models'] = models?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Models {
  Models({
      this.phoneName, 
      this.rating, 
      this.comment, 
      this.releasedate, 
      this.price, 
      this.battery, 
      this.fontcamera, 
      this.backcamera, 
      this.video, 
      this.ram, 
      this.rom, 
      this.type, 
      this.sim, 
      this.chipset, 
      this.cardslot, 
      this.protection, 
      this.charging, 
      this.weight, 
      this.colors, 
      this.network,});

  Models.fromJson(dynamic json) {
    phoneName = json['phoneName'];
    rating = json['rating'];
    comment = json['comment'];
    releasedate = json['release date'];
    price = json['price'];
    battery = json['battery'];
    fontcamera = json[' font camera'];
    backcamera = json[' back camera'];
    video = json['video '];
    ram = json['ram'];
    rom = json['rom'];
    type = json['Type'];
    sim = json['sim'];
    chipset = json['chipset'];
    cardslot = json['card slot'];
    protection = json['protection'];
    charging = json['charging'];
    weight = json['weight'];
    colors = json['colors'];
    network = json['network'];
  }
  String? phoneName;
  num? rating;
  String? comment;
  String? releasedate;
  String? price;
  String? battery;
  String? fontcamera;
  String? backcamera;
  String? video;
  String? ram;
  String? rom;
  String? type;
  String? sim;
  String? chipset;
  String? cardslot;
  String? protection;
  String? charging;
  String? weight;
  String? colors;
  String? network;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['phoneName'] = phoneName;
    map['rating'] = rating;
    map['comment'] = comment;
    map['release date'] = releasedate;
    map['price'] = price;
    map['battery'] = battery;
    map[' font camera'] = fontcamera;
    map[' back camera'] = backcamera;
    map['video '] = video;
    map['ram'] = ram;
    map['rom'] = rom;
    map['Type'] = type;
    map['sim'] = sim;
    map['chipset'] = chipset;
    map['card slot'] = cardslot;
    map['protection'] = protection;
    map['charging'] = charging;
    map['weight'] = weight;
    map['colors'] = colors;
    map['network'] = network;
    return map;
  }

}