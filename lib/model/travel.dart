class Travel {
  late String travelName;
  late String travelAddress;
  late String travelImg;
  late String travelDesc;

  Travel(this.travelName, this.travelAddress, this.travelImg, this.travelDesc);

 static List<Travel> getTravelList() {
    return [
      Travel("Travel 1", "Bangladesh", 'images/travel.jpg', "Travel 1"),
      Travel("Travel 2", "India", 'images/travel1.jpg', "Travel 2"),
      Travel("Travel 3", "Srbijanka", 'images/travel2.jpg', "Travel 3"),
      Travel("Travel 4", "Nepal", 'images/travel3.png', "Travel 4"),
      Travel("Travel 5", "Vu tan", 'images/travel4.jpg', "Travel 5"),
      Travel("Travel 6", "Pakistan", 'images/travel5.jpg', "Travel 6"),
    ];
  }

  static List<Travel> getMostTravelList() {
    return [
      Travel("Travel 1", "Bangladesh", 'images/travel.jpg', "Travel 1"),
      Travel("Travel 2", "India", 'images/travel1.jpg', "Travel 2"),
      Travel("Travel 3", "Srbijanka", 'images/travel2.jpg', "Travel 3"),
      Travel("Travel 4", "Nepal", 'images/travel3.png', "Travel 4"),
      Travel("Travel 5", "Vu tan", 'images/travel4.jpg', "Travel 5"),
      Travel("Travel 6", "Pakistan", 'images/travel5.jpg', "Travel 6"),
    ];
  }
}
