import 'package:game_countries_new/constants/app_text.dart';

class Continent {
  const Continent({required this.name, required this.image});
  final String name;
  final String image;
}

const africa = Continent(name: AppText.africa, image: 'Africano');
const asia = Continent(name: AppText.asia, image: 'Asia');
const europe = Continent(name: AppText.europe, image: 'Europen');
const northAmerica = Continent(
    name: AppText.northAmerica, image: 'North-America-Map-PNG-Clipart');
const southAmerica = Continent(name: AppText.southAmerica, image: 'southAmer');
const australia = Continent(name: AppText.australia, image: 'australian');

List<Continent> continentsList = [
  asia,
  europe,
  northAmerica,
  southAmerica,
  africa,
  australia,
];

class EuropeCountries {
  const EuropeCountries({required this.name, required this.image});
  final String name;
  final String image;
}

const hungary =
    EuropeCountries(name: EuropeCountriesName.hungary, image: 'HungaryFlag');
const austria =
    EuropeCountries(name: EuropeCountriesName.austria, image: 'AustriaFlag');
const switzerland = EuropeCountries(
    name: EuropeCountriesName.switzerland, image: 'SwitzerlandFlag');
const germany =
    EuropeCountries(name: EuropeCountriesName.germany, image: 'GermanFlag');
const unitedKingdom = EuropeCountries(
    name: EuropeCountriesName.unitedKingdom, image: 'GreatBritainFlag');
const france =
    EuropeCountries(name: EuropeCountriesName.france, image: 'FranceFlag');
const italy =
    EuropeCountries(name: EuropeCountriesName.italy, image: 'ItalyFlag');
const finland =
    EuropeCountries(name: EuropeCountriesName.finland, image: 'FinlandFlag');
const denmark =
    EuropeCountries(name: EuropeCountriesName.denmark, image: 'DenmarkFlag');
const ireland =
    EuropeCountries(name: EuropeCountriesName.ireland, image: 'IrelandFlag');
const spain =
    EuropeCountries(name: EuropeCountriesName.spain, image: 'SpainFlag');
const ukraine =
    EuropeCountries(name: EuropeCountriesName.ukraine, image: 'UkrainFlag');

List<EuropeCountries> europeCountriesList = [
  hungary,
  austria,
  switzerland,
  germany,
  unitedKingdom,
  france,
  italy,
  finland,
  denmark,
  ireland,
  spain,
  ukraine,
];

class AsiaCountries {
  const AsiaCountries({required this.nameAsia, required this.imageAsia});
  final String nameAsia;
  final String imageAsia;
}

const kyrgyzstan = AsiaCountries(
    nameAsia: AsiaCountriesName.kyrgyzstan, imageAsia: 'Kyrgyzstan');
const kazakhstan = AsiaCountries(
    nameAsia: AsiaCountriesName.kazakhstan, imageAsia: 'Kazakhstan');
const uzbekistan = AsiaCountries(
    nameAsia: AsiaCountriesName.uzbekistan, imageAsia: 'Uzbekistan');
// const tajikstan =
//     AsiaCountries(name: AsiaCountriesName.tajikstan, image: 'TadjikistanFlag');
const turkmenistan = AsiaCountries(
    nameAsia: AsiaCountriesName.turkmenistan, imageAsia: 'TurkmenistanFlag');
const japan =
    AsiaCountries(nameAsia: AsiaCountriesName.japan, imageAsia: 'Japan');
const china =
    AsiaCountries(nameAsia: AsiaCountriesName.china, imageAsia: 'China');
const singapour =
    AsiaCountries(nameAsia: AsiaCountriesName.singapour, imageAsia: 'Singapur');
const india =
    AsiaCountries(nameAsia: AsiaCountriesName.india, imageAsia: 'India');
const turkey =
    AsiaCountries(nameAsia: AsiaCountriesName.turkey, imageAsia: 'Turky');

List<AsiaCountries> asiaCountriesList = [
  kyrgyzstan,
  kazakhstan,
  uzbekistan,
  turkey,
  turkmenistan,
  japan,
  china,
  singapour,
  india,
];

class AfricaCountries {
  const AfricaCountries({required this.nameAfrica, required this.imageAfrica});
  final String nameAfrica;
  final String imageAfrica;
}

const aljir = AfricaCountries(
    nameAfrica: AfricaCountriesName.aljir, imageAfrica: 'Algir');
const ambazonia = AfricaCountries(
    nameAfrica: AfricaCountriesName.ambazonia, imageAfrica: 'Ambazonia');
const angola = AfricaCountries(
    nameAfrica: AfricaCountriesName.angola, imageAfrica: 'Angola');
const benin = AfricaCountries(
    nameAfrica: AfricaCountriesName.benin, imageAfrica: 'Benin');
const bostvana = AfricaCountries(
    nameAfrica: AfricaCountriesName.bostvana, imageAfrica: 'Bostvana');
const burkinoFaso = AfricaCountries(
    nameAfrica: AfricaCountriesName.burkinoFaso, imageAfrica: 'BurcinaFaso');
const burundi = AfricaCountries(
    nameAfrica: AfricaCountriesName.burundi, imageAfrica: 'Burundi');
const gabon = AfricaCountries(
    nameAfrica: AfricaCountriesName.gabon, imageAfrica: 'Gabon');
const gambia = AfricaCountries(
    nameAfrica: AfricaCountriesName.gambia, imageAfrica: 'Gambia');

List<AfricaCountries> africaCountriesList = [
  aljir,
  ambazonia,
  angola,
  benin,
  bostvana,
  burkinoFaso,
  burundi,
  gabon,
  gambia,
];

class NorthAmericaCountries {
  const NorthAmericaCountries(
      {required this.nameNorthAmerica, required this.imageNorthAmerica});
  final String nameNorthAmerica;
  final String imageNorthAmerica;
}

const usa = NorthAmericaCountries(
    nameNorthAmerica: NorthAmericaCountriesName.usa,
    imageNorthAmerica: 'UsaFlag');
const canada = NorthAmericaCountries(
    nameNorthAmerica: NorthAmericaCountriesName.canada,
    imageNorthAmerica: 'CanadaFlag');
const antigua = NorthAmericaCountries(
    nameNorthAmerica: NorthAmericaCountriesName.antigua,
    imageNorthAmerica: 'AntiguaAndBarbuda');
const bagamdar = NorthAmericaCountries(
    nameNorthAmerica: NorthAmericaCountriesName.bagamdar,
    imageNorthAmerica: 'Bagamy');
const barbados = NorthAmericaCountries(
    nameNorthAmerica: NorthAmericaCountriesName.barbados,
    imageNorthAmerica: 'Barbados');
const beliz = NorthAmericaCountries(
    nameNorthAmerica: NorthAmericaCountriesName.beliz,
    imageNorthAmerica: 'Beliz');
const grenada = NorthAmericaCountries(
    nameNorthAmerica: NorthAmericaCountriesName.grenada,
    imageNorthAmerica: 'Grenada');
const gvatemala = NorthAmericaCountries(
    nameNorthAmerica: NorthAmericaCountriesName.gvatemala,
    imageNorthAmerica: 'Gvatemala');
const gaiti = NorthAmericaCountries(
    nameNorthAmerica: NorthAmericaCountriesName.gaiti,
    imageNorthAmerica: 'Gaiti');

List<NorthAmericaCountries> northAmericaCountriesList = [
  usa,
  canada,
  antigua,
  bagamdar,
  barbados,
  beliz,
  grenada,
  gvatemala,
  gaiti
];

class SouthAmericaCountries {
  const SouthAmericaCountries({required this.name, required this.image});
  final String name;
  final String image;
}

const argentina = SouthAmericaCountries(
    name: SouthAmericaCountriesName.argentina, image: 'Argentina');
const bolivia = SouthAmericaCountries(
    name: SouthAmericaCountriesName.bolivia, image: 'Bolivia');
const brazil = SouthAmericaCountries(
    name: SouthAmericaCountriesName.brazil, image: 'Bolivia');
const venesuella = SouthAmericaCountries(
    name: SouthAmericaCountriesName.venesuella, image: 'Venesuela');
const gaiana = SouthAmericaCountries(
    name: SouthAmericaCountriesName.gaiana, image: 'Gaiana');
const columbia = SouthAmericaCountries(
    name: SouthAmericaCountriesName.columbia, image: 'Columbia');
const paragvay = SouthAmericaCountries(
    name: SouthAmericaCountriesName.paragvay, image: 'Paragvai');
const peru =
    SouthAmericaCountries(name: SouthAmericaCountriesName.peru, image: 'Peru');
const urugvay = SouthAmericaCountries(
    name: SouthAmericaCountriesName.urugvay, image: 'Urugvai');

List<SouthAmericaCountries> southAmericaCountriesList = [
  argentina,
  bolivia,
  brazil,
  venesuella,
  gaiana,
  columbia,
  paragvay,
  peru,
  urugvay
];

class AustralianCountries {
  const AustralianCountries(
      {required this.nameAustralia, required this.imageAustralianCountries});
  final String nameAustralia;
  final String imageAustralianCountries;
}

const australiaa = AustralianCountries(
    nameAustralia: AustralianCountriesName.australiaa,
    imageAustralianCountries: 'Australiaa');
const vanuatu = AustralianCountries(
    nameAustralia: AustralianCountriesName.vanuatu,
    imageAustralianCountries: 'Vanuatu');
const kiribati = AustralianCountries(
    nameAustralia: AustralianCountriesName.kiribati,
    imageAustralianCountries: 'Kiribati');
const micronezia = AustralianCountries(
    nameAustralia: AustralianCountriesName.micronezia,
    imageAustralianCountries: 'Micronezia');
const nauru = AustralianCountries(
    nameAustralia: AustralianCountriesName.nauru,
    imageAustralianCountries: 'Nauru');
const newZeland = AustralianCountries(
    nameAustralia: AustralianCountriesName.australiaa,
    imageAustralianCountries: 'NewZeland');
const palau = AustralianCountries(
    nameAustralia: AustralianCountriesName.palau,
    imageAustralianCountries: 'Palau');
const newGvinea = AustralianCountries(
    nameAustralia: AustralianCountriesName.newGvinea,
    imageAustralianCountries: 'NewGvinea');
const samoa = AustralianCountries(
    nameAustralia: AustralianCountriesName.samoa,
    imageAustralianCountries: 'Samoa');

List <AustralianCountries> australianCountiesList = [
australiaa,
vanuatu,
kiribati,
micronezia,
nauru,
newZeland,
palau,
newGvinea,
samoa
];