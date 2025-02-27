import 'package:f_read/db/objectbox.dart';
import 'package:f_read/entity/book_source.dart';
import 'package:f_read/helper/book_helper.dart';
import 'package:f_read/helper/db_helper.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BookSourceController extends GetxController {
  // 本地已保存的书源
  // @observable
  List<BookSource> localBookSource = [];

  // @observable
  List<BookSource> bookSource = [];

  @override
  onInit() {
    super.onInit();
    querySqlBookSource();
  }

  parseUrl(String url) async {
    // TDToast.showLoading(context: context);
    // try {
    //   bookSource = (await BookSourceHelper.importSource(url)) ?? [];
    //   if (!context.mounted) {
    //     return;
    //   }
    //   urlEdit.clear();
    //   TDToast.showSuccess('书源加载成功', context: context);
    // } catch (e) {
    //   TDToast.showFail('加载失败', context: context);
    // }
    return bookSource = (await BookHelper.importSource(url)) ?? [];
  }

  insertBookSouce() async {
    final box = await Objectbox.createBookSourceBox();
    box.putMany(bookSource);
    bookSource.clear();
    querySqlBookSource();
  }

  // 获取本地已保存的书源
  // @action
  querySqlBookSource() async {
    localBookSource = await DbHelper.queryBookSource();
    update();
  }
}
