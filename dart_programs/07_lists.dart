// Experiment 1 extension: create, access, add, and remove list items.
void main() {
  final subjects = <String>['Dart', 'Flutter', 'UI Design'];

  print('Subjects: $subjects');
  print('First subject: ${subjects.first}');

  subjects.add('Testing');
  print('After adding: $subjects');

  subjects.remove('UI Design');
  print('After removing: $subjects');

  for (final subject in subjects) {
    print('- $subject');
  }
}
