import 'package:get/get.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/education/education_binding.dart';
import '../modules/education/education_view.dart';
import '../modules/projects/projects_binding.dart';
import '../modules/projects/projects_view.dart';
import '../modules/skills/skills_binding.dart';
import '../modules/skills/skills_view.dart';
import '../modules/contact/contact_binding.dart';
import '../modules/contact/contact_view.dart';

class AppPages {
  static const INITIAL = '/home';

  static final routes = [
    GetPage(name: '/home', page: () => HomeView(), binding: HomeBinding()),
    GetPage(
      name: '/education',
      page: () => EducationView(),
      binding: EducationBinding(),
    ),
    GetPage(
      name: '/projects',
      page: () => ProjectsView(),
      binding: ProjectsBinding(),
    ),
    GetPage(
      name: '/skills',
      page: () => SkillsView(),
      binding: SkillsBinding(),
    ),
    GetPage(
      name: '/contact',
      page: () => ContactView(),
      binding: ContactBinding(),
    ),
  ];
}
