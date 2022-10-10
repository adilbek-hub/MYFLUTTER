class Oblus {
  String aty;
  int rayonu;
  Oblus({
    required this.aty,
    required this.rayonu,
  });
  void jaz() {
    print('men $aty oblusumun, menin karamagymda $rayonu rayon bar');
  }
}

class Chuy extends Oblus {
  Chuy({
    required super.aty,
    required super.rayonu,
  });
}

void main(List<String> args) {
  Chuy chuy = Chuy(
    aty: 'Chuy',
    rayonu: 8,
  );
  chuy.jaz();
}
