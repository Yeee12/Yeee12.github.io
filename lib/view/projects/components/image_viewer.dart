import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewer {
  ImageViewer(BuildContext context, String image) {
    showGeneralDialog(
      barrierColor: Colors.white38,
      transitionDuration: const Duration(milliseconds: 500),
      barrierDismissible: true,
      barrierLabel: 'Barrier',
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Center(
                child: Hero(
                  tag: 'IMAGEVIEW',
                  child: PhotoView(
                    imageProvider: AssetImage(image),
                    backgroundDecoration: const BoxDecoration(color: Colors.white),
                  ),
                ),
              ),


              Positioned(
                top: 40,
                left: 20,
                child: SafeArea(
                  child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.5),
                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
