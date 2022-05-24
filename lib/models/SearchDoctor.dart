class SearchDoctor {
  final String? image, name, speciality, time, hospitalName;

  SearchDoctor(
      {this.image, this.name, this.speciality, this.time, this.hospitalName});
}

List<SearchDoctor> demo_search_doctors = [
  SearchDoctor(
    image: "assets/images/search_doc_1.png",
    name: "Dr. Gina Asare",
    speciality: "Carddiologist (MBBS,FCPS)",
    time: "12.00pm - 4.00pm",
    hospitalName: "Ridge Hospital",
  ),
  SearchDoctor(
    image: "assets/images/search_doc_2.png",
    name: "Dr. Samantha Owusu",
    speciality: "Carddiologist (MBBS,FCPS)",
    time: "8.00pm - 11.00pm",
    hospitalName: "Korle-Bu Teaching Hospital",
  ),
  SearchDoctor(
    image: "assets/images/search_doc_3.png",
    name: "Dr. Francis Esechi Chandra",
    speciality: "Carddiologist (MBBS,FCPS)",
    time: "3.00pm - 5.00pm",
    hospitalName: "37 Military Hospital",
  ),
  SearchDoctor(
    image: "assets/images/search_doc_4.png",
    name: "Dr. Mohammed Abdul",
    speciality: "Carddiologist (MBBS,FCPS)",
    time: "12.00pm - 4.00pm",
    hospitalName: "Korle-Bu Teaching Hospital",
  ),
];
