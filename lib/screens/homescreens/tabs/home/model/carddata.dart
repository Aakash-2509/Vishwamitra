class CardData {
  final String title;
  final String imageUrl;
  final String location;
  final String schedule;
  final String websiteUrl;

  CardData({
    required this.title,
    required this.imageUrl,
    required this.location,
    required this.schedule,
    required this.websiteUrl,
  });

  factory CardData.fromJson(Map<String, dynamic> json) {
    return CardData(
      title: json['title'],
      imageUrl: json['imageUrl'],
      location: json['location'],
      schedule: json['schedule'],
      websiteUrl: json['websiteUrl'],
    );
  }
}


// {
//   "title": "Robinhood acadmaybe (1/3)",
//   "imageUrl": "assets/img/bg.jpeg",
//   "likes": 12,
//   "location": "Indore, MP",
//   "distance": "3 Km",
//   "schedule": "Mon & Fri, 9am-12pm",
//   "website": "https://www.robinhoodacademy.org"
// }
