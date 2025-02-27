import 'package:f_read/entity/book_source_part.dart';
import 'package:f_read/helper/db_helper.dart';
import 'package:f_read/main.dart';
import 'package:get/get.dart';

class BookSearchController extends GetxController {
  String keyWord = '';
  int searchId = 0;

  List<BookSourcePart> _bookSourcePart = [];

  search(String keyWord) async {
    logger.e('开始搜索:$keyWord');
    if (this.keyWord == keyWord) {
      // 本次搜索和上次搜索内容相同  取消上次搜索后重新开始搜索
    }
    searchId = DateTime.now().millisecondsSinceEpoch;
    this.keyWord = keyWord;
    await getBookSourceParts();
    if (_bookSourcePart.isEmpty) {
      return;
    }

    // BookS
  }

  // 搜索范围书源
  getBookSourceParts() async {
    // final list = HashSet<BookSourcePart>();
    _bookSourcePart = await DbHelper.queryBookSourcePart();
    // list.add(value)
    //  if (scope.isEmpty()) {
    //         list.addAll(appDb.bookSourceDao.allEnabledPart)
    //     } else {
    //         if (scope.contains("::")) {
    //             scope.substringAfter("::").let {
    //                 appDb.bookSourceDao.getBookSourcePart(it)?.let { source ->
    //                     list.add(source)
    //                 }
    //             }
    //         } else {
    //             val oldScope = scope.splitNotBlank(",")
    //             val newScope = oldScope.filter {
    //                 val bookSources = appDb.bookSourceDao.getEnabledPartByGroup(it)
    //                 list.addAll(bookSources)
    //                 bookSources.isNotEmpty()
    //             }
    //             if (oldScope.size != newScope.size) {
    //                 update(newScope)
    //                 stateLiveData.postValue(scope)
    //             }
    //         }
    //         if (list.isEmpty()) {
    //             scope = ""
    //             appDb.bookSourceDao.allEnabledPart.let {
    //                 if (it.isNotEmpty()) {
    //                     stateLiveData.postValue(scope)
    //                     list.addAll(it)
    //                 }
    //             }
    //         }
    //     }
    //     return list.sortedBy { it.customOrder }
  }
}
