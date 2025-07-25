import 'package:flutter/material.dart';
import 'package:michael_site/model/project_model.dart';
import 'package:michael_site/res/constants.dart';
import 'package:michael_site/view%20model/responsive.dart';
import 'package:michael_site/view/projects/components/project_link.dart';

class ProjectDetail extends StatelessWidget {
  final int index;

  const ProjectDetail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              projectList[index].name,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          Responsive.isMobile(context)
              ? const SizedBox(height: defaultPadding / 2)
              : const SizedBox(height: defaultPadding),

          Text(
            projectList[index].description,
            style: const TextStyle(
              color: Colors.grey,
              height: 1.5,
            ),
            maxLines: Responsive.isMobile(context)
                ? null
                : size.width > 700 && size.width < 750
                ? 3
                : size.width < 470
                ? 2
                : size.width > 600 && size.width < 700
                ? 6
                : size.width > 900 && size.width < 1060
                ? 6
                : 4,
            overflow: Responsive.isMobile(context)
                ? TextOverflow.visible
                : TextOverflow.ellipsis,
          ),



          ProjectLinks(index: index),

          const SizedBox(height: defaultPadding / 1.5),
        ],
      ),
    );
  }
}
