import 'dart:developer';

import 'package:get/get.dart';

class FirstScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // pageData.addAll(animalNames);
    update();
  }

  RxInt counterValue = 0.obs;

  RxList<String> pageData = <String>[
    "Lion",
    "Tiger",
    "Bear",
    "Elephant",
    "Wolf",
    "Gorilla",
    "Chimpanzee",
    "Orangutan",
    "Dolphin",
    "Whale",
    "Shark",
    "Giraffe",
    "Zebra",
    "Horse",
    "Cow",
    "Pig",
    "Sheep",
    "Goat",
    "Camel",
    "Kangaroo",
    "Koala",
    "Snake",
    "Lizard",
    "Turtle",
    "Crocodile",
    "Eagle",
    "Hawk",
    "Owl",
    "Parrot",
    "Penguin",
    "Ostrich",
    "Chicken",
    "Duck",
    "Goose",
    "Swan",
    "Fish",
    "Frog",
    "Toad",
    "Spider",
    "Butterfly",
    "Bee",
    "Ant",
    "Mosquito",
    "Fly",
    "Worm",
    "Crab",
    "Lobster",
    "Squid",
    "Octopus",
    "Jellyfish",
    "Starfish",
    "Seahorse",
  ].obs;

  List<String> countries = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bhutan",
    "Bolivia",
    "Bosnia and Herzegovina",
    "Botswana",
    "Brazil",
    "Brunei Darussalam",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Cape Verde",
    "Central African Republic",
    "Chad",
    "Chile",
    "China",
    "Colombia",
    "Comoros",
    "Congo",
    "Costa Rica",
    "Côte d'Ivoire",
    "Croatia",
    "Cuba",
    "Cyprus",
    "Czech Republic",
    "Democratic People's Republic of Korea",
    "Democratic Republic of the Congo",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "Ecuador",
    "Egypt",
    "El Salvador",
  ];

  void updateDataOnRefresh() {
    pageData.clear();
    pageData.addAll(countries);
    log(pageData.toString());
    update();
  }
}
