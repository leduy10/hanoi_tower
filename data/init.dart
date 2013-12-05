part of hanoi_tower;

HanoiTowerModel model;
final int END_ROW = 18;

init(HanoiTowerModel hanoiTowerModel) {
  model = hanoiTowerModel;
  initParkings();
}

initParkings() {
  Tower parking3 = new Tower(3);
  model.parkings.add(parking3);
  initCarsOfParking3(parking3);
  
  Tower parking4 = new Tower(4);
  model.parkings.add(parking4);
  initCarsOfParking4(parking4);
  
  Tower parking5 = new Tower(5);
  model.parkings.add(parking5);
  initCarsOfParking5(parking5);
  
  Tower parking6 = new Tower(6);
  model.parkings.add(parking6);
  initCarsOfParking6(parking6);
  
  Tower parking7 = new Tower(7);
  model.parkings.add(parking7);
  initCarsOfParking7(parking7);
}

initCarsOfParking7(Tower parking) {
  if (parking.number == 7) {
      Disk car1A = new Disk(parking, 1, '#66CC99');
      car1A.startRow = END_ROW - 6;
      car1A.startColumn = 6;
      parking.disks.add(car1A);

      Disk car1B = new Disk(parking, 3, '#FFCC66');
      car1B.startRow = END_ROW - 5;
      car1B.startColumn = 5;
      parking.disks.add(car1B);

      Disk car1C = new Disk(parking, 5, '#00FFFF');
      car1C.startRow = END_ROW - 4;
      car1C.startColumn = 4;
      parking.disks.add(car1C);

      Disk car1O = new Disk(parking, 7, '#FF99CC');
      car1O.startRow = END_ROW - 3;
      car1O.startColumn = 3;
      parking.disks.add(car1O);

      Disk car1P = new Disk(parking, 9, '#660033');
      car1P.startRow = END_ROW - 2;
      car1P.startColumn = 2;
      parking.disks.add(car1P);

      Disk car1Q = new Disk(parking, 11, '#009966');
      car1Q.startRow = END_ROW - 1;
      car1Q.startColumn = 1;
      parking.disks.add(car1Q);

      Disk car1R = new Disk(parking, 13, '#BEBEBE');
      car1R.startRow = END_ROW;
      car1R.startColumn = 0;
      parking.disks.add(car1R);

    for (Disk car in parking.disks) {
      car.currentRow = car.startRow;
      car.currentColumn = car.startColumn;
    }
  }
}

initCarsOfParking6(Tower parking) {
  if (parking.number == 6) {
      Disk car1A = new Disk(parking, 1, '#66CC99');
      car1A.startRow = END_ROW - 5;
      car1A.startColumn = 6;
      parking.disks.add(car1A);

      Disk car1B = new Disk(parking, 3, '#FFCC66');
      car1B.startRow = END_ROW - 4;
      car1B.startColumn = 5;
      parking.disks.add(car1B);

      Disk car1C = new Disk(parking, 5, '#00FFFF');
      car1C.startRow = END_ROW - 3;
      car1C.startColumn = 4;
      parking.disks.add(car1C);

      Disk car1O = new Disk(parking, 7, '#FF99CC');
      car1O.startRow = END_ROW - 2;
      car1O.startColumn = 3;
      parking.disks.add(car1O);

      Disk car1P = new Disk(parking, 9, '#660033');
      car1P.startRow = END_ROW - 1;
      car1P.startColumn = 2;
      parking.disks.add(car1P);

      Disk car1Q = new Disk(parking, 11, '#009966');
      car1Q.startRow = END_ROW;
      car1Q.startColumn = 1;
      parking.disks.add(car1Q);

    for (Disk car in parking.disks) {
      car.currentRow = car.startRow;
      car.currentColumn = car.startColumn;
    }
  }

}

initCarsOfParking5(Tower parking) {
  if (parking.number == 5) {
      Disk car1A = new Disk(parking, 1, '#66CC99');
      car1A.startRow = END_ROW - 4;
      car1A.startColumn = 6;
      parking.disks.add(car1A);
      
      Disk car1B = new Disk(parking, 3, '#FFCC66');
      car1B.startRow = END_ROW - 3;
      car1B.startColumn = 5;
      parking.disks.add(car1B);

      Disk car1C = new Disk(parking, 5, '#00FFFF');
      car1C.startRow = END_ROW - 2;
      car1C.startColumn = 4;
      parking.disks.add(car1C);

      Disk car1O = new Disk(parking, 7, '#FF99CC');
      car1O.startRow = END_ROW - 1;
      car1O.startColumn = 3;
      parking.disks.add(car1O);

      Disk car1P = new Disk(parking, 9, '#660033');
      car1P.startRow = END_ROW;
      car1P.startColumn = 2;
      parking.disks.add(car1P);

    for (Disk car in parking.disks) {
      car.currentRow = car.startRow;
      car.currentColumn = car.startColumn;
    }
  }
}
  
initCarsOfParking4(Tower parking) {
  if (parking.number == 4) {
      Disk car1A = new Disk(parking, 1, '#66CC99');
      car1A.startRow = END_ROW - 3;
      car1A.startColumn = 6;
      parking.disks.add(car1A);

      Disk car1B = new Disk(parking, 3, '#FFCC66');
      car1B.startRow = END_ROW - 2;
      car1B.startColumn = 5;
      parking.disks.add(car1B);

      Disk car1C = new Disk(parking, 5, '#00FFFF');
      car1C.startRow = END_ROW - 1;
      car1C.startColumn = 4;
      parking.disks.add(car1C);

      Disk car1O = new Disk(parking, 7, '#FF99CC');
      car1O.startRow = END_ROW;
      car1O.startColumn = 3;
      parking.disks.add(car1O);

    for (Disk car in parking.disks) {
      car.currentRow = car.startRow;
      car.currentColumn = car.startColumn;
    }
  }
}
  
initCarsOfParking3(Tower parking) {
  if (parking.number == 3) {
      Disk car1A = new Disk(parking, 1, '#66CC99');
      car1A.startRow = END_ROW - 2;
      car1A.startColumn = 6;
      parking.disks.add(car1A);

      Disk car1B = new Disk(parking, 3, '#FFCC66');
      car1B.startRow = END_ROW - 1;
      car1B.startColumn = 5;
      parking.disks.add(car1B);

      Disk car1C = new Disk(parking, 5, '#00FFFF');
      car1C.startRow = END_ROW;
      car1C.startColumn = 4;
      parking.disks.add(car1C);

    for (Disk car in parking.disks) {
      car.currentRow = car.startRow;
      car.currentColumn = car.startColumn;
    }
  }
}
