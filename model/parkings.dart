part of hanoi_tower;

class Parkings extends Concepts {

  Parkings();

  Parking getParking(int number) {
    for (Parking parking in this) {
      if (parking.number == number) {
        return parking;
      }
    }
    return null;
  }

}

class Parking extends Concept {

  int number;

  Cars cars;

  Parking(this.number) {
    cars = new Cars.ofParking(this);
  }

  String toString() {
    return 'Parking: ${oid.timeStamp} ${number}';
  }

}

