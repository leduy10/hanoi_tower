part of hanoi_tower;

printCarBrandCar(CarParkingModel carParkingModel) {
  print('-----------------');
  print('-CarBrands, Cars-');
  print('-----------------');
  CarBrands carBrands = carParkingModel.carBrands;
  for (CarBrand carBrand in carBrands) {
    carBrand.display();
    Cars cars = carBrand.cars;
    for (Car car in cars) {
      car.display();
      car.parking.display();
    }
  }
}

printParkingCar(CarParkingModel carParkingModel) {
  print('----------------');
  print('-Parkings, Cars-');
  print('----------------');
  Parkings parkings = carParkingModel.parkings;
  for (Parking parking in parkings) {
    parking.display();
    Cars cars = parking.cars;
    for (Car car in cars) {
      car.display();
      car.carBrand.display();
    }
  }
}

printModel(CarParkingModel carParkingModel) {
  printCarBrandCar(carParkingModel);
  printParkingCar(carParkingModel);
}

