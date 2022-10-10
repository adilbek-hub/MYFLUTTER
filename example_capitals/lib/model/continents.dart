class ContinentIndex {
  const ContinentIndex({required this.name, required this.image});
  final String name;
  final String image;
}

const europe = ContinentIndex(name: 'Europe', image: 'europe_continent');
const asia = ContinentIndex(name: 'Asia', image: 'asia_continent');
const northAmerica =
    ContinentIndex(name: 'North America', image: 'north_america_continent');
const southAmerica =
    ContinentIndex(name: 'South America', image: 'south_america_continent');

List<ContinentIndex> continentList = [
europe,
asia,
northAmerica,
southAmerica,
];
