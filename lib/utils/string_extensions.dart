extension Case on String {
  String toTitleCase() {
    if (isEmpty) return this;
    final initial = this[0].toUpperCase();
    if (length == 1) return initial;
    return initial + substring(1);
  }
}
