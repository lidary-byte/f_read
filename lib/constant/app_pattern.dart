/*
 * @Description: 
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-19 16:21:35
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-19 16:25:53
 */
class AppPattern {
  static final RegExp JS_PATTERN = RegExp(
    r"<js>([\w\W]*?)</js>|@js:([\w\W]*)",
    caseSensitive: false,
  );
  static final RegExp EXP_PATTERN = RegExp(r"\{\{([\w\W]*?)\}\}");

  // Match formatted image tags
  static final RegExp imgPattern = RegExp(
    r'<img[^>]*src="([^"]*(?:"[^>]+\})?)"[^>]*>',
  );

  // Data URL image type
  static final RegExp dataUriRegex = RegExp(r"data:.*?;base64,(.*)");

  static final RegExp nameRegex = RegExp(r"\s+作\s*者.*|\s+\S+\s+著");
  static final RegExp authorRegex = RegExp(r"^\s*作\s*者[:：\s]+|\s+著");
  static final RegExp fileNameRegex = RegExp(r'[\\/:*?"<>|.]');
  static final RegExp splitGroupRegex = RegExp(r"[,;，；]");
  static final RegExp titleNumPattern = RegExp(r"(第)(.+?)(章)");

  // Various symbols in debug messages
  static final RegExp debugMessageSymbolRegex = RegExp(r"[⇒◇┌└≡]");

  // Supported book file types
  static final RegExp bookFileRegex = RegExp(
    r".*\.(txt|epub|umd|pdf|mobi|azw3|azw)",
    caseSensitive: false,
  );

  // Supported archive file types
  static final RegExp archiveFileRegex = RegExp(
    r".*\.(zip|rar|7z)$",
    caseSensitive: false,
  );

  // All punctuation marks
  static final RegExp bdRegex = RegExp(r"(\p{P})+");

  // Line breaks
  static final RegExp rnRegex = RegExp(r"[\r\n]");

  // Non-pronounced paragraph judgment
  static final RegExp notReadAloudRegex = RegExp(
    r"^(\s|\p{C}|\p{P}|\p{Z}|\p{S})+$",
  );

  static final RegExp xmlContentTypeRegex = RegExp(
    r"(application|text)/\w*\+?xml.*",
  );

  static final RegExp semicolonRegex = RegExp(r";");

  static final RegExp equalsRegex = RegExp(r"=");

  static final RegExp spaceRegex = RegExp(r"\s+");

  static final RegExp regexCharRegex = RegExp(r"[{}()\[\].+*?^$\\|]");

  static final RegExp LFRegex = RegExp(r"\n");
}
