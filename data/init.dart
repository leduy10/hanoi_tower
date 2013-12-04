part of hanoi_tower;

CarParkingModel model;
final int END_ROW = 18;

init(CarParkingModel carParkingModel) {
  model = carParkingModel;
  initCarBrands();
  initParkings();
}

initCarBrands() {
  CarBrand carBrandA = new CarBrand('A');
  carBrandA.length = 1;
  carBrandA.colorName = 'green';
  carBrandA.color = '#66CC99';
  carBrandA.red = 102;
  carBrandA.green = 204;
  carBrandA.blue = 153;
  model.carBrands.add(carBrandA);

  CarBrand carBrandB = new CarBrand('B');
  carBrandB.length = 3;
  carBrandB.colorName = 'orange';
  carBrandB.color = '#FFCC66';
  carBrandB.red = 255;
  carBrandB.green = 204;
  carBrandB.blue = 102;
  model.carBrands.add(carBrandB);

  CarBrand carBrandC = new CarBrand('C');
  carBrandC.length = 5;
  carBrandC.colorName = 'cyan';
  carBrandC.color = '#00FFFF';
  carBrandC.red = 0;
  carBrandC.green = 255;
  carBrandC.blue = 255;
  model.carBrands.add(carBrandC);

  CarBrand carBrandD = new CarBrand('D');
  carBrandD.length = 7;
  carBrandD.colorName = 'light pink';
  carBrandD.color = '#FF99CC';
  carBrandD.red = 255;
  carBrandD.green = 153;
  carBrandD.blue = 204;
  model.carBrands.add(carBrandD);

  CarBrand carBrandE = new CarBrand('E');
  carBrandE.length = 9;
  carBrandE.colorName = 'dark magenta';
  carBrandE.color = '#660033';
  carBrandE.red = 102;
  carBrandE.green = 0;
  carBrandE.blue = 51;
  model.carBrands.add(carBrandE);

  CarBrand carBrandF = new CarBrand('F');
  carBrandF.length = 11;
  carBrandF.colorName = 'dark green';
  carBrandF.color = '#009966';
  carBrandF.red = 0;
  carBrandF.green = 153;
  carBrandF.blue = 102;
  model.carBrands.add(carBrandF);

  CarBrand carBrandG = new CarBrand('G');
  carBrandG.length = 13;
  carBrandG.colorName = 'gray';
  carBrandG.color = '#BEBEBE';
  carBrandG.red = 190;
  carBrandG.green = 190;
  carBrandG.blue = 190;
  model.carBrands.add(carBrandG);
}

initParkings() {
  Parking parking3 = new Parking(3);
  model.parkings.add(parking3);
  initCarsOfParking3(parking3);
  
  Parking parking4 = new Parking(4);
  model.parkings.add(parking4);
  initCarsOfParking4(parking4);
  
  Parking parking5 = new Parking(5);
  model.parkings.add(parking5);
  initCarsOfParking5(parking5);
  
  Parking parking6 = new Parking(6);
  model.parkings.add(parking6);
  initCarsOfParking6(parking6);
  
  Parking parking7 = new Parking(7);
  model.parkings.add(parking7);
  initCarsOfParking7(parking7);
}

initCarsOfParking7(Parking parking) {
  if (parking.number == 7) {
    CarBrand carBrandA = model.carBrands.getCarBrand('A');
    if (carBrandA != null) {
      Car car1A = new Car(parking, carBrandA);
      car1A.orientation = 'horizontal';
      car1A.startRow = END_ROW - 6;
      car1A.startColumn = 6;
      parking.cars.add(car1A);
      carBrandA.cars.add(car1A);
    }

    CarBrand carBrandB = model.carBrands.getCarBrand('B');
    if (carBrandB != null) {
      Car car1B = new Car(parking, carBrandB);
      car1B.orientation = 'horizontal';
      car1B.startRow = END_ROW - 5;
      car1B.startColumn = 5;
      parking.cars.add(car1B);
      carBrandB.cars.add(car1B);
    }

    CarBrand carBrandC = model.carBrands.getCarBrand('C');
    if (carBrandC != null) {
      Car car1C = new Car(parking, carBrandC);
      car1C.orientation = 'horizontal';
      car1C.startRow = END_ROW - 4;
      car1C.startColumn = 4;
      parking.cars.add(car1C);
      carBrandC.cars.add(car1C);
    }

    CarBrand carBrandD = model.carBrands.getCarBrand('D');
    if (carBrandD != null) {
      Car car1O = new Car(parking, carBrandD);
      car1O.orientation = 'horizontal';
      car1O.startRow = END_ROW - 3;
      car1O.startColumn = 3;
      parking.cars.add(car1O);
      carBrandD.cars.add(car1O);
    }

    CarBrand carBrandE = model.carBrands.getCarBrand('E');
    if (carBrandE != null) {
      Car car1P = new Car(parking, carBrandE);
      car1P.orientation = 'horizontal';
      car1P.startRow = END_ROW - 2;
      car1P.startColumn = 2;
      parking.cars.add(car1P);
      carBrandE.cars.add(car1P);
    }

    CarBrand carBrandF = model.carBrands.getCarBrand('F');
    if (carBrandF != null) {
      Car car1Q = new Car(parking, carBrandF);
      car1Q.orientation = 'horizontal';
      car1Q.startRow = END_ROW - 1;
      car1Q.startColumn = 1;
      parking.cars.add(car1Q);
      carBrandF.cars.add(car1Q);
    }

    CarBrand carBrandG = model.carBrands.getCarBrand('G');
    if (carBrandG != null) {
      Car car1R = new Car(parking, carBrandG);
      car1R.orientation = 'horizontal';
      car1R.startRow = END_ROW;
      car1R.startColumn = 0;
      parking.cars.add(car1R);
      carBrandG.cars.add(car1R);
    }

    for (Car car in parking.cars) {
      car.currentRow = car.startRow;
      car.currentColumn = car.startColumn;
    }
  }
}

initCarsOfParking6(Parking parking) {
  if (parking.number == 6) {
    CarBrand carBrandA = model.carBrands.getCarBrand('A');
    if (carBrandA != null) {
      Car car1A = new Car(parking, carBrandA);
      car1A.orientation = 'horizontal';
      car1A.startRow = END_ROW - 5;
      car1A.startColumn = 6;
      parking.cars.add(car1A);
      carBrandA.cars.add(car1A);
    }

    CarBrand carBrandB = model.carBrands.getCarBrand('B');
    if (carBrandB != null) {
      Car car1B = new Car(parking, carBrandB);
      car1B.orientation = 'horizontal';
      car1B.startRow = END_ROW - 4;
      car1B.startColumn = 5;
      parking.cars.add(car1B);
      carBrandB.cars.add(car1B);
    }

    CarBrand carBrandC = model.carBrands.getCarBrand('C');
    if (carBrandC != null) {
      Car car1C = new Car(parking, carBrandC);
      car1C.orientation = 'horizontal';
      car1C.startRow = END_ROW - 3;
      car1C.startColumn = 4;
      parking.cars.add(car1C);
      carBrandC.cars.add(car1C);
    }

    CarBrand carBrandD = model.carBrands.getCarBrand('D');
    if (carBrandD != null) {
      Car car1O = new Car(parking, carBrandD);
      car1O.orientation = 'horizontal';
      car1O.startRow = END_ROW - 2;
      car1O.startColumn = 3;
      parking.cars.add(car1O);
      carBrandD.cars.add(car1O);
    }

    CarBrand carBrandE = model.carBrands.getCarBrand('E');
    if (carBrandE != null) {
      Car car1P = new Car(parking, carBrandE);
      car1P.orientation = 'horizontal';
      car1P.startRow = END_ROW - 1;
      car1P.startColumn = 2;
      parking.cars.add(car1P);
      carBrandE.cars.add(car1P);
    }

    CarBrand carBrandF = model.carBrands.getCarBrand('F');
    if (carBrandF != null) {
      Car car1Q = new Car(parking, carBrandF);
      car1Q.orientation = 'horizontal';
      car1Q.startRow = END_ROW;
      car1Q.startColumn = 1;
      parking.cars.add(car1Q);
      carBrandF.cars.add(car1Q);
    }

    for (Car car in parking.cars) {
      car.currentRow = car.startRow;
      car.currentColumn = car.startColumn;
    }
  }

}

initCarsOfParking5(Parking parking) {
  if (parking.number == 5) {
    CarBrand carBrandA = model.carBrands.getCarBrand('A');
    if (carBrandA != null) {
      Car car1A = new Car(parking, carBrandA);
      car1A.orientation = 'horizontal';
      car1A.startRow = END_ROW - 4;
      car1A.startColumn = 6;
      parking.cars.add(car1A);
      carBrandA.cars.add(car1A);
    }

    CarBrand carBrandB = model.carBrands.getCarBrand('B');
    if (carBrandB != null) {
      Car car1B = new Car(parking, carBrandB);
      car1B.orientation = 'horizontal';
      car1B.startRow = END_ROW - 3;
      car1B.startColumn = 5;
      parking.cars.add(car1B);
      carBrandB.cars.add(car1B);
    }

    CarBrand carBrandC = model.carBrands.getCarBrand('C');
    if (carBrandC != null) {
      Car car1C = new Car(parking, carBrandC);
      car1C.orientation = 'horizontal';
      car1C.startRow = END_ROW - 2;
      car1C.startColumn = 4;
      parking.cars.add(car1C);
      carBrandC.cars.add(car1C);
    }

    CarBrand carBrandD = model.carBrands.getCarBrand('D');
    if (carBrandD != null) {
      Car car1O = new Car(parking, carBrandD);
      car1O.orientation = 'horizontal';
      car1O.startRow = END_ROW - 1;
      car1O.startColumn = 3;
      parking.cars.add(car1O);
      carBrandD.cars.add(car1O);
    }

    CarBrand carBrandE = model.carBrands.getCarBrand('E');
    if (carBrandE != null) {
      Car car1P = new Car(parking, carBrandE);
      car1P.orientation = 'horizontal';
      car1P.startRow = END_ROW;
      car1P.startColumn = 2;
      parking.cars.add(car1P);
      carBrandE.cars.add(car1P);
    }

    for (Car car in parking.cars) {
      car.currentRow = car.startRow;
      car.currentColumn = car.startColumn;
    }
  }
}
  
initCarsOfParking4(Parking parking) {
  if (parking.number == 4) {
    CarBrand carBrandA = model.carBrands.getCarBrand('A');
    if (carBrandA != null) {
      Car car1A = new Car(parking, carBrandA);
      car1A.orientation = 'horizontal';
      car1A.startRow = END_ROW - 3;
      car1A.startColumn = 6;
      parking.cars.add(car1A);
      carBrandA.cars.add(car1A);
    }

    CarBrand carBrandB = model.carBrands.getCarBrand('B');
    if (carBrandB != null) {
      Car car1B = new Car(parking, carBrandB);
      car1B.orientation = 'horizontal';
      car1B.startRow = END_ROW - 2;
      car1B.startColumn = 5;
      parking.cars.add(car1B);
      carBrandB.cars.add(car1B);
    }

    CarBrand carBrandC = model.carBrands.getCarBrand('C');
    if (carBrandC != null) {
      Car car1C = new Car(parking, carBrandC);
      car1C.orientation = 'horizontal';
      car1C.startRow = END_ROW - 1;
      car1C.startColumn = 4;
      parking.cars.add(car1C);
      carBrandC.cars.add(car1C);
    }

    CarBrand carBrandD = model.carBrands.getCarBrand('D');
    if (carBrandD != null) {
      Car car1O = new Car(parking, carBrandD);
      car1O.orientation = 'horizontal';
      car1O.startRow = END_ROW;
      car1O.startColumn = 3;
      parking.cars.add(car1O);
      carBrandD.cars.add(car1O);
    }

    for (Car car in parking.cars) {
      car.currentRow = car.startRow;
      car.currentColumn = car.startColumn;
    }
  }
}
  
initCarsOfParking3(Parking parking) {
  if (parking.number == 3) {
    CarBrand carBrandA = model.carBrands.getCarBrand('A');
    if (carBrandA != null) {
      Car car1A = new Car(parking, carBrandA);
      car1A.orientation = 'horizontal';
      car1A.startRow = END_ROW - 2;
      car1A.startColumn = 6;
      parking.cars.add(car1A);
      carBrandA.cars.add(car1A);
    }

    CarBrand carBrandB = model.carBrands.getCarBrand('B');
    if (carBrandB != null) {
      Car car1B = new Car(parking, carBrandB);
      car1B.orientation = 'horizontal';
      car1B.startRow = END_ROW - 1;
      car1B.startColumn = 5;
      parking.cars.add(car1B);
      carBrandB.cars.add(car1B);
    }

    CarBrand carBrandC = model.carBrands.getCarBrand('C');
    if (carBrandC != null) {
      Car car1C = new Car(parking, carBrandC);
      car1C.orientation = 'horizontal';
      car1C.startRow = END_ROW;
      car1C.startColumn = 4;
      parking.cars.add(car1C);
      carBrandC.cars.add(car1C);
    }

    for (Car car in parking.cars) {
      car.currentRow = car.startRow;
      car.currentColumn = car.startColumn;
    }
  }
}
