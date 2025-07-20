import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Check on Github',style: TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis),
            IconButton(onPressed: () {launchUrl(Uri.parse(projectList[index].link));}, icon: SvgPicture.asset('assets/icons/github.svg')),
          ],
        ),
        SizedBox(height: 3,),
        TextButton(
            onPressed: () {
              launchUrl(Uri.parse(projectList[index].link));
            }, child: const Text('Read More>>',overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 10),)
        ),
        SizedBox(height: 3,),
        TextButton(
            onPressed: () {
              launchUrl(Uri.parse(projectList[index].googleDrive));
            }, child: const Text('Download App>>',overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 10),)
        ),
      ],
    );
  }
}
