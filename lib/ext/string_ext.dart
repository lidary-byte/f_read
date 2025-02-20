extension StringExt on String {
  List<String> splitNotBlank(RegExp regex, {int limit = 0}) {
    return split(
      regex,
    ).map((e) => e.trim()).where((e) => e.isNotEmpty).toList();
  }

  bool isJsonObject() {
    var trim = this.trim();
    return trim.startsWith('{') && trim.endsWith('}');
  }

  bool isJsonArray() {
    var trim = this.trim();
    return trim.startsWith('[') && trim.endsWith(']');
  }

  bool isXml() {
    var trim = this.trim();
    return trim.startsWith('<') && trim.endsWith('>');
  }

  bool isAbsUrl() {
    var trim = this.trim();
    return trim.startsWith('http://') || trim.startsWith('https://');
  }

  bool isUri() {
    return trim().startsWith('file://');
  }
}
