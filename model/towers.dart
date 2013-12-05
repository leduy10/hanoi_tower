part of hanoi_tower;

class Tower extends Concept {

  int number;
  List disks;

  Tower(this.number) {
    disks = new List();
  }

  void deselect() {
    for (Disk disk in disks) {
      disk.selected = false;
    }
  }
}

