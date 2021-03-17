class Celcius {
  double? Temperature;

  Celcius(double temperature) {
    this.Temperature = temperature;
  }

  Farenheit toFarenheit(Celcius c) {
    var t = c.Temperature! * 9 / 5 + 32;
    return Farenheit(t);
  }

  @override
  String toString() {
    return "${this.Temperature} °C";
  }
}

class Farenheit {
  double? Temperature;

  Farenheit(double temperature) {
    this.Temperature = temperature;
  }

  Celcius toCelcius(Farenheit f) {
    var t = (f.Temperature! - 32) * 5 / 9;
    return Celcius(t);
  }

  @override
  String toString() {
    return "${this.Temperature} °F";
  }
}

void main(List<String> args) {
  var t = double.parse(args.first);
  var f = Farenheit(t);
  var c = Celcius(t);
  print("$f = ${f.toCelcius(f)}, $c = ${c.toFarenheit(c)}");
}
