part of hanoi_tower;

class CarParkingModel {

  CarBrands carBrands;
  Parkings parkings;

  CarParkingModel() {
    carBrands = new CarBrands();
    parkings = new Parkings();
    init(this);
  }

}
