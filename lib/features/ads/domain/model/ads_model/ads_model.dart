import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_model.g.dart';
part 'ads_model.freezed.dart';

@freezed
class AdsModel with _$AdsModel {
  factory AdsModel({
    required int views,
    required String seller,
    required List<String> imagePath,
    required String productName,
    required String category,
    required String locationTitle,
    required double lat,
    required double long,
    required String userId,
    required String? description,
    required double price,
    required DateTime dateCreated,
    required DateTime dateMoidified,
  }) = _AdsModel;
  factory AdsModel.fromJson(Map<String, dynamic> json) =>
      _$AdsModelFromJson(json);

  factory AdsModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();

    return AdsModel.fromJson(data!);
  }
  static Map<String, dynamic> toFireStore(
      AdsModel adsModel, SetOptions? options) {
    return adsModel.toJson();
  }
}
