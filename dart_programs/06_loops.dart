// Experiment 1 extension: demonstrate for, while, and for-in loops.
void main() {
  print('For loop:');
  for (var i = 1; i <= 5; i++) {
    print(i);
  }

  print('While loop:');
  var count = 1;
  while (count <= 3) {
    print('Count: $count');
    count++;
  }

  print('For-in loop:');
  for (final day in ['Mon', 'Tue', 'Wed']) {
    print(day);
  }
}
