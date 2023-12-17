class LiveApiResponse {
  String? message;
  String? timestamp;

  LiveApiResponse({this.message, this.timestamp});

  LiveApiResponse.fromJson(Map<String, dynamic>? json) {
    message = json!['message'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['timestamp'] = this.timestamp;
    return data;
  }
}