// Experiment 1 extension: named parameters and return values.
int estimateTravelMinutes({required int distanceKm, int averageSpeedKmh = 30}) {
  if (averageSpeedKmh <= 0) {
    throw ArgumentError.value(averageSpeedKmh, 'averageSpeedKmh', 'Must be positive');
  }
  return ((distanceKm / averageSpeedKmh) * 60).ceil();
}

void main() {
  final minutes = estimateTravelMinutes(distanceKm: 12, averageSpeedKmh: 24);
  print('Estimated travel time: $minutes minutes');
}
