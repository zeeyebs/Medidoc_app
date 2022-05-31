import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_app/ui/widgets/custom_carousel_card.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({Key? key}) : super(key: key);

  @override
  _CustomCarouselState createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  final CarouselController _controller = CarouselController();

  int _current = 0;

  final List<Widget>? images = [
    const SpecialistCarouselCard(),
    const SpecialistCarouselCard(),
    const SpecialistCarouselCard(),
    const SpecialistCarouselCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images,
      options: CarouselOptions(
          enlargeCenterPage: true,
          viewportFraction: 0.85,
          aspectRatio: 18 / 9,
          autoPlay: true,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          }),
      carouselController: _controller,
    );
  }
}

class AvailableDoctorCarousel extends StatefulWidget {
  const AvailableDoctorCarousel({Key? key}) : super(key: key);

  @override
  State<AvailableDoctorCarousel> createState() => _AvailableDoctorCarouselState();
}

class _AvailableDoctorCarouselState extends State<AvailableDoctorCarousel> {
  final CarouselController _controller = CarouselController();

  int _current = 0;

  final List<Widget>? images = [
    const AvailableDoctorsCarouselCard(),
    const AvailableDoctorsCarouselCard(),
    const AvailableDoctorsCarouselCard(),
    const AvailableDoctorsCarouselCard(),
    const AvailableDoctorsCarouselCard(),
    const AvailableDoctorsCarouselCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images,
      options: CarouselOptions(
          initialPage: _current,
          enlargeCenterPage: false,
          padEnds: false,
          viewportFraction: 0.6,
          aspectRatio: 18 / 9,
          autoPlay: true,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          }),
      carouselController: _controller,
    );
  }
}
