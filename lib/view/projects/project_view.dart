import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:michael_site/res/constants.dart';
import 'package:michael_site/view%20model/getx_controllers/projects_controller.dart';
import 'package:michael_site/view%20model/responsive.dart';
import 'package:michael_site/view/projects/components/title_text.dart';
import 'components/projects_grid.dart';
class ProjectsView extends StatelessWidget {
  ProjectsView({super.key});
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: 'Latest', title: 'Projects'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: ProjectGrid(crossAxisCount: 3,),
                  extraLargeScreen: ProjectGrid(crossAxisCount: 4,),
                  largeMobile: ProjectGrid(crossAxisCount: 1,ratio: 1.8),
                  mobile: ProjectGrid(crossAxisCount: 1,ratio: 1.1),
                  tablet: ProjectGrid(ratio: 1.4,crossAxisCount: 2,)))
        ],
      ),
    );
  }
}







