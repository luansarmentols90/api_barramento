class DistanceModelResponse {
  AirbyteAbId? airbyteAbId;
  AirbyteAbId? airbyteEmittedAt;
  AirbyteAbId? destination;
  AirbyteAbId? distanceText;
  DistanceValue? distanceValue;
  AirbyteAbId? durationText;
  DistanceValue? durationValue;
  AirbyteAbId? origin;

  DistanceModelResponse(
      {this.airbyteAbId,
        this.airbyteEmittedAt,
        this.destination,
        this.distanceText,
        this.distanceValue,
        this.durationText,
        this.durationValue,
        this.origin});

  DistanceModelResponse.fromJson(Map<String, dynamic> json) {
    airbyteAbId = json['airbyte_ab_id'] != null
        ? new AirbyteAbId.fromJson(json['airbyte_ab_id'])
        : null;
    airbyteEmittedAt = json['airbyte_emitted_at'] != null
        ? new AirbyteAbId.fromJson(json['airbyte_emitted_at'])
        : null;
    destination = json['destination'] != null
        ? new AirbyteAbId.fromJson(json['destination'])
        : null;
    distanceText = json['distance_text'] != null
        ? new AirbyteAbId.fromJson(json['distance_text'])
        : null;
    distanceValue = json['distance_value'] != null
        ? new DistanceValue.fromJson(json['distance_value'])
        : null;
    durationText = json['duration_text'] != null
        ? new AirbyteAbId.fromJson(json['duration_text'])
        : null;
    durationValue = json['duration_value'] != null
        ? new DistanceValue.fromJson(json['duration_value'])
        : null;
    origin = json['origin'] != null
        ? new AirbyteAbId.fromJson(json['origin'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.airbyteAbId != null) {
      data['airbyte_ab_id'] = this.airbyteAbId!.toJson();
    }
    if (this.airbyteEmittedAt != null) {
      data['airbyte_emitted_at'] = this.airbyteEmittedAt!.toJson();
    }
    if (this.destination != null) {
      data['destination'] = this.destination!.toJson();
    }
    if (this.distanceText != null) {
      data['distance_text'] = this.distanceText!.toJson();
    }
    if (this.distanceValue != null) {
      data['distance_value'] = this.distanceValue!.toJson();
    }
    if (this.durationText != null) {
      data['duration_text'] = this.durationText!.toJson();
    }
    if (this.durationValue != null) {
      data['duration_value'] = this.durationValue!.toJson();
    }
    if (this.origin != null) {
      data['origin'] = this.origin!.toJson();
    }
    return data;
  }
}

class AirbyteAbId {
  String? s0;

  AirbyteAbId({this.s0});

  AirbyteAbId.fromJson(Map<String, dynamic> json) {
    s0 = json['0'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['0'] = this.s0;
    return data;
  }
}

class DistanceValue {
  int? i0;

  DistanceValue({this.i0});

  DistanceValue.fromJson(Map<String, dynamic> json) {
    i0 = json['0'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['0'] = this.i0;
    return data;
  }
}