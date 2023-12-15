import 'package:flutter/material.dart';


class Movie {
  String title;
  String description;
  String imageUrl;
  int year;

  Movie(
  {required this.title,
    required this.description,
    required this.imageUrl,
    required this.year});
}



List<Movie>movieList = [
  Movie(title: "G1", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/G1.jpg' , year: 2022),
  Movie(title: "G2", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/G2.jpg' , year: 2022),
  Movie(title: "G3", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/G3.jpg' , year: 2022),
  Movie(title: "G4", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/G4.jpg' , year: 2022),
  Movie(title: "G5", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/G5.jpg' , year: 2022),
  Movie(title: "G6", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/G6.jpg' , year: 2022),
  Movie(title: "G7", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/G7.jpg' , year: 2022),
  Movie(title: "G8", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/G8.jpg' , year: 2022),
  Movie(title: "G9", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/G9.jpg' , year: 2022),
  Movie(title: "G10", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/G10.jpg' , year: 2022),
  Movie(title: "G11", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/G11.jpg' , year: 2022),
  Movie(title: "G12", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/G12.jpg' , year: 2022),
  Movie(title: "G13", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/G13.jpg' , year: 2022),
  Movie(title: "G14", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/G14.jpg' , year: 2022),
  Movie(title: "ME1-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/ME1-21.jpg' , year: 2022),
  Movie(title: "ME2-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/ME2-21.jpg' , year: 2022),
  Movie(title: "IT1-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT1-2021.jpg' , year: 2022),
  Movie(title: "IT2-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT2-2021.jpg' , year: 2022),
  Movie(title: "IT3-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT3-2021.jpg' , year: 2022),
  Movie(title: "IT4-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT4-2021.jpg' , year: 2022),
  Movie(title: "IT5-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT5-2021.jpg' , year: 2022),
  Movie(title: "IT6-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT6-2021.jpg' , year: 2022),
  Movie(title: "CIE1-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/CIE1-21.jpg' , year: 2022),
  Movie(title: "ME1-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/ME1-20.jpg' , year: 2022),
  Movie(title: "ME2-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/ME2-20.jpg' , year: 2022),
  Movie(title: "CIE1-2-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/CIE1-2-20.jpg' , year: 2022),
  Movie(title: "IT1-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT1-20.jpg' , year: 2022),
  Movie(title: "IT2-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT2-20.jpg' , year: 2022),
  Movie(title: "IT3-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT3-20.jpg' , year: 2022),
  Movie(title: "IT4-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT4-20.jpg' , year: 2022),
  Movie(title: "ME1-19", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/ME1-19.jpg' , year: 2022),
  Movie(title: "ME2-19", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/ME2-19.jpg' , year: 2022),
  Movie(title: "ME3-19", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/ME3-19.jpg' , year: 2022),
  Movie(title: "ME4-19", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/ME4-19.jpg' , year: 2022),
  Movie(title: "CIE-19", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/CIE-19.jpg' , year: 2022),
  Movie(title: "IT1-19", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT1-19.jpg' , year: 2022),
  Movie(title: "IT2-19", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT2-19.jpg' , year: 2022),
  Movie(title: "IT3-19", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT3-19.jpg' , year: 2022),
  Movie(title: "IT4-19", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT4-19.jpg' , year: 2022),
  Movie(title: "IT5-19", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT5-19.jpg' , year: 2022),
  Movie(title: "IT6-19", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/IT6-19.jpg' , year: 2022),
  Movie(title: "SE1-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE1-21.jpg' , year: 2022),
  Movie(title: "SE2-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE2-21.jpg' , year: 2022),
  Movie(title: "SE3-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE3-21.jpg' , year: 2022),
  Movie(title: "SE4-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE4-21.jpg' , year: 2022),
  Movie(title: "SE1-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE1-20.jpg' , year: 2022),
  Movie(title: "SE2-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE2-20.jpg' , year: 2022),
  Movie(title: "SE3-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE3-20.jpg' , year: 2022),
  Movie(title: "SE4-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE4-20.jpg' , year: 2022),
  Movie(title: "SE5-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE5-20.jpg' , year: 2022),
  Movie(title: "SE6-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE6-20.jpg' , year: 2022),
  Movie(title: "SE7-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE7-20.jpg' , year: 2022),
  Movie(title: "SE8-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE8-20.jpg' , year: 2022),
  Movie(title: "SE9-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE9-20.jpg' , year: 2022),
  Movie(title: "SE10-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE10-20.jpg' , year: 2022),
  Movie(title: "SE11-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE11-20.jpg' , year: 2022),
  Movie(title: "SE12-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/SE12-20.jpg' , year: 2022),
  Movie(title: "AD1-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/AD1-21.jpg' , year: 2022),
  Movie(title: "AD2-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/AD2-21.jpg' , year: 2022),
  Movie(title: "AD1-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/AD1-20.jpg' , year: 2022),
  Movie(title: "AD2-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/AD2-20.jpg' , year: 2022),
  Movie(title: "AD3-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/AD3-20.jpg' , year: 2022),
  Movie(title: "AD4-20", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/AD4-20.jpg' , year: 2022),
  Movie(title: "BM1-22", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/BM1-22.jpg' , year: 2022),
  Movie(title: "BM2-22", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/BM2-22.jpg' , year: 2022),
  Movie(title: "BM3-22", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/BM3-22.jpg' , year: 2022),
  Movie(title: "BM4-22", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/BM4-22.jpg' , year: 2022),
  Movie(title: "BM1-21", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/BM1-21.jpg' , year: 2022),
  Movie(title: "PD1-22", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/PD1-22.jpg' , year: 2022),
  Movie(title: "MS_CIE", description: "polito.uz / devbox.uz", imageUrl: 'assets/image/MS_CIE.jpg' , year: 2022),

];














