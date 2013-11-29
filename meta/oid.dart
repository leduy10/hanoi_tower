part of hanoi_tower;

class Oid {

  static int increment = 0;

  int timeStamp;

  Oid() {
    DateTime nowDate = new DateTime.now();
    int nowValue = nowDate.millisecondsSinceEpoch;  // versus nowDate.millisecond ?
    timeStamp = nowValue + increment++;
  }

}