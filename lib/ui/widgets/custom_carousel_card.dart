import 'package:doctor_app/constants.dart';
import 'package:doctor_app/models/doctors.dart';
import 'package:doctor_app/text_style.dart';
import 'package:doctor_app/ui/screens/doctors/doctor_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

class SpecialistCarouselCard extends StatelessWidget {
  const SpecialistCarouselCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Looking For You Desire\nSpecialist Doctor?",
                    style: cardHeadersTextStyle.copyWith(color: primaryColor2),
                  ),
                  const Gap(20),
                  Text(
                    "Dr. Todd Nelson",
                    style: tagTextStyle.copyWith(
                        color: primaryColor2, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Medicine & Cadio Specialist",
                    style: tagTextStyle.copyWith(color: discountCardColor),
                  ),
                  Text(
                    "Good Health Clinic",
                    style: tagTextStyle.copyWith(color: discountCardColor),
                  ),
                ],
              ),
              Expanded(child: Image.asset("assets/images/Kiran_Nelson.png"))
            ],
          ),
        ),
      ),
    );
  }
}

class AvailableDoctorsCarouselCard extends StatelessWidget {
  const AvailableDoctorsCarouselCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(18.0, 0.0, 0.0, 8.0),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(20),
        color: primaryColor2,
        child: Container(
            margin: const EdgeInsets.only(left: 18.0),
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: primaryColor2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dr. Zennita Yeboah",
                      style: inputTextStyle.copyWith(fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      "Medical Specialist",
                      style: tagTextStyle,
                    ),
                    RatingBar.builder(
                      itemSize: 10,
                      initialRating: 4.5,
                      minRating: 0,
                      ignoreGestures: true,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (BuildContext context, int index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    const Gap(10),
                    const Text("Experience"),
                    const Text("8 Years"),
                    const Gap(10),
                    const Text("Patients"),
                    const Text("307")
                  ],
                ),
                Expanded(
                  child: Image.asset("assets/images/Kwame_Khan.png"),
                ),
              ],
            )),
      ),
    );
  }
}

class DoctorsPageCard extends StatelessWidget {
  const DoctorsPageCard({
    Key? key,
    required final int index,
  })  : _index = index,
        super(key: key);
  final int _index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DoctorProfile.id);
      },
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(20),
        color: primaryColor2,
        child: Container(
            margin: const EdgeInsets.only(left: 0.0),
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: primaryColor2),
            child: Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                Image.asset(
                  doctorsList[_index].image,
                  fit: BoxFit.fitHeight,
                  width: 100,
                  height: 200,
                ),
                Positioned(
                  width: 115,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dr. ${doctorsList[_index].name}",
                        style: inputTextStyle.copyWith(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        doctorsList[_index].specialty,
                        style: tagTextStyle,
                      ),
                      RatingBar.builder(
                        itemSize: 10,
                        initialRating: doctorsList[_index].ratings,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (BuildContext context, int index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      const Gap(10),
                      const Text("Experience"),
                      Text("${doctorsList[_index].experience} Years"),
                      const Gap(10),
                      const Text("Patients"),
                      Text(doctorsList[_index].patientCount.toString())
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
