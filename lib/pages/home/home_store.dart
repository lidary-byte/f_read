/*
 * @Description: 
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-20 10:26:43
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-20 14:32:26
 */
import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @observable
  int pageIndex = 0;

  @action
  void changePage(int index) {
    pageIndex = index;
  }
}
