///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class TaskModelDataNotComplated {
/*
{
  "id": 20,
  "title": "Deneme Başlık Todo",
  "description": "DEnem Başlık Todo Açıklaması",
  "isComplete": false,
  "createdAt": "2022-03-29T18:42:28.000Z"
} 
*/

  int? id;
  String? title;
  String? description;
  bool? isComplete;
  String? createdAt;

  TaskModelDataNotComplated({
    this.id,
    this.title,
    this.description,
    this.isComplete,
    this.createdAt,
  });
  TaskModelDataNotComplated.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    title = json['title']?.toString();
    description = json['description']?.toString();
    isComplete = json['isComplete'];
    createdAt = json['createdAt']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['isComplete'] = isComplete;
    data['createdAt'] = createdAt;
    return data;
  }
}

class TaskModelDataComplated {
/*
{
  "id": 21,
  "title": "2. Deneme Başlık Todo",
  "description": "2. Denem Başlık Todo Açıklaması",
  "isComplete": true,
  "createdAt": "2022-03-29T18:43:34.000Z"
} 
*/

  int? id;
  String? title;
  String? description;
  bool? isComplete;
  String? createdAt;

  TaskModelDataComplated({
    this.id,
    this.title,
    this.description,
    this.isComplete,
    this.createdAt,
  });
  TaskModelDataComplated.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    title = json['title']?.toString();
    description = json['description']?.toString();
    isComplete = json['isComplete'];
    createdAt = json['createdAt']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['isComplete'] = isComplete;
    data['createdAt'] = createdAt;
    return data;
  }
}

class TaskModelData {
/*
{
  "complated": [
    {
      "id": 21,
      "title": "2. Deneme Başlık Todo",
      "description": "2. Denem Başlık Todo Açıklaması",
      "isComplete": true,
      "createdAt": "2022-03-29T18:43:34.000Z"
    }
  ],
  "notComplated": [
    {
      "id": 20,
      "title": "Deneme Başlık Todo",
      "description": "DEnem Başlık Todo Açıklaması",
      "isComplete": false,
      "createdAt": "2022-03-29T18:42:28.000Z"
    }
  ]
} 
*/

  List<TaskModelDataComplated?>? complated;
  List<TaskModelDataNotComplated?>? notComplated;

  TaskModelData({
    this.complated,
    this.notComplated,
  });
  TaskModelData.fromJson(Map<String, dynamic> json) {
    if (json['complated'] != null) {
      final v = json['complated'];
      final arr0 = <TaskModelDataComplated>[];
      v.forEach((v) {
        arr0.add(TaskModelDataComplated.fromJson(v));
      });
      complated = arr0;
    }
    if (json['notComplated'] != null) {
      final v = json['notComplated'];
      final arr0 = <TaskModelDataNotComplated>[];
      v.forEach((v) {
        arr0.add(TaskModelDataNotComplated.fromJson(v));
      });
      notComplated = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (complated != null) {
      final v = complated;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['complated'] = arr0;
    }
    if (notComplated != null) {
      final v = notComplated;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['notComplated'] = arr0;
    }
    return data;
  }
}

class TaskModel {
/*
{
  "message": "Notlar başarıyla getirildi",
  "status": true,
  "data": {
    "complated": [
      {
        "id": 21,
        "title": "2. Deneme Başlık Todo",
        "description": "2. Denem Başlık Todo Açıklaması",
        "isComplete": true,
        "createdAt": "2022-03-29T18:43:34.000Z"
      }
    ],
    "notComplated": [
      {
        "id": 20,
        "title": "Deneme Başlık Todo",
        "description": "DEnem Başlık Todo Açıklaması",
        "isComplete": false,
        "createdAt": "2022-03-29T18:42:28.000Z"
      }
    ]
  }
} 
*/

  String? message;
  bool? status;
  TaskModelData? data;

  TaskModel({
    this.message,
    this.status,
    this.data,
  });
  TaskModel.fromJson(Map<String, dynamic> json) {
    message = json['message']?.toString();
    status = json['status'];
    data = (json['data'] != null) ? TaskModelData.fromJson(json['data']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message;
    data['status'] = status;
    if (data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}