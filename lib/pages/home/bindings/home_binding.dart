import 'package:f_read/pages/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Binding {
  @override
  List<Bind> dependencies() => [Bind.lazyPut(() => HomeController())];
}
