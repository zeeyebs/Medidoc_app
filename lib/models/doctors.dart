import 'package:cloud_firestore/cloud_firestore.dart';

class Doctors {
  Doctors({
    required this.id,
    required this.name,
    required this.image,
    required this.specialty,
    required this.experience,
    required this.patientCount,
    required this.ratings,
  });
  late final String name;
  late final String specialty;
  late final int experience;
  late final int patientCount;
  late final String id;
  late final double ratings;
  late final String image;

  factory Doctors.fromDocument(DocumentSnapshot<Map<String, dynamic>> docs) {
    return Doctors(
        id: docs.data()!["id"],
        name: docs.data()!["name"],
        image: docs.data()!['image'],
        specialty: docs.data()!['image'],
        experience: docs.data()!['image'],
        patientCount: docs.data()!['image'],
        ratings: docs.data()!['image']);
  }
}

List<Doctors> doctorsList = [
  Doctors(
    id: "10001001",
    name: "Todd Nelson",
    image: "assets/images/Kwame_Khan.png",
    specialty: "Neurosurgeon",
    experience: 8,
    patientCount: 312,
    ratings: 4.5,
  ),
  Doctors(
    id: "10001002",
    name: "Zennita Maame Yeboah",
    image: "assets/images/John_Edoo.png",
    specialty: "Dentist",
    experience: 8,
    patientCount: 11,
    ratings: 4.5,
  ),
  Doctors(
    id: "10001003",
    name: "Francis Echesi",
    image: "assets/images/Masu_Awudu.png",
    specialty: "Cardiologist",
    experience: 8,
    patientCount: 25,
    ratings: 4.5,
  ),
  Doctors(
    id: "10001004",
    name: "Max-Ryan Gyekyi ",
    image: "assets/images/Salina_Zaman.png",
    specialty: "Neurosurgeon",
    experience: 8,
    patientCount: 42,
    ratings: 4.5,
  ),
  Doctors(
    id: "10001005",
    name: "Nana Osei Kweku Wiah ",
    image: "assets/images/Kwame_Khan.png",
    specialty: "Psychologist",
    experience: 8,
    patientCount: 112,
    ratings: 4.5,
  ),
  Doctors(
    id: "10001006",
    name: "Innocent Atim",
    image: "assets/images/Kwame_Khan.png",
    specialty: "Gynecologist",
    experience: 8,
    patientCount: 81,
    ratings: 4.5,
  ),
  Doctors(
    id: "10001007",
    name: "Jephta",
    image: "assets/images/Kwame_Khan.png",
    specialty: "Pediatrician",
    experience: 8,
    patientCount: 51,
    ratings: 4.5,
  ),
  Doctors(
    id: "10001008",
    name: "Samuel Dzilah",
    image: "assets/images/Kwame_Khan.png",
    specialty: "Cardiologist",
    experience: 8,
    patientCount: 35,
    ratings: 4.5,
  ),
  Doctors(
    id: "10001009",
    name: "Godfred Appiah",
    image: "assets/images/Kwame_Khan.png",
    specialty: "Neurosurgeon",
    experience: 8,
    patientCount: 91,
    ratings: 4.5,
  ),
];
