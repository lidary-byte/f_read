extension StringExt on String? {
  List<String> splitNotBlank(RegExp regex, {int limit = 0}) {
    if (isNullOrBlank()) {
      return [];
    }
    return this!
        .split(regex)
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();
  }

  bool isJsonObject() {
    if (isNullOrBlank()) {
      return false;
    }
    var trim = this!.trim();
    return trim.startsWith('{') && trim.endsWith('}');
  }

  bool isJsonArray() {
    if (isNullOrBlank()) {
      return false;
    }
    var trim = this!.trim();
    return trim.startsWith('[') && trim.endsWith(']');
  }

  bool isXml() {
    if (isNullOrBlank()) {
      return false;
    }
    var trim = this!.trim();
    return trim.startsWith('<') && trim.endsWith('>');
  }

  bool isAbsUrl() {
    if (isNullOrBlank()) {
      return false;
    }
    var trim = this!.trim();
    return trim.startsWith('http://') || trim.startsWith('https://');
  }

  bool isUri() {
    if (isNullOrBlank()) {
      return false;
    }
    return this!.trim().startsWith('file://');
  }

  bool isNullOrEmpty() {
    return this == null || this!.isEmpty;
  }

  bool isNullOrBlank() {
    return this == null || this!.trim().isEmpty;
  }
}
