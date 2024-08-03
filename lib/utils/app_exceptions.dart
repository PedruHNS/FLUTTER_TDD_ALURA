class DatabaseNotOpenException implements Exception {
  static const String message =
      "The database was not opened, check if the 'openDatabase' method was used correctly.";
}
