class AvailableDoctor {
  final String? name, sector, patients, image;
  final int? experience;

  AvailableDoctor(
      {this.name, this.sector, this.experience, this.patients, this.image});
}

List<AvailableDoctor> demoAvailableDoctors = [
  AvailableDoctor(
    name: "Dr. Gina Asare",
    sector: "Medicine Specialist",
    experience: 8,
    patients: '1.08K',
    image: "assets/images/Gina Asare.png",
  ),
  AvailableDoctor(
    name: "Dr. Kwame Khan",
    sector: "Medicine Specialist",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/Kwame_Khan.png",
  ),
  AvailableDoctor(
    name: "Dr. Kiran Nelson",
    sector: "Medicine Specialist",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/Kiran_Nelson.png",
  ),
  AvailableDoctor(
    name: "Dr. Masu Awudu",
    sector: "Medicine Specialist",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/Masu_Awudu.png",
  ),
  AvailableDoctor(
    name: "Dr. John Edoo",
    sector: "Medicine Specialist",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/John_Edoo.png",
  ),
];
