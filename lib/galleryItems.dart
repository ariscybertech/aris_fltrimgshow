import 'package:flutter/widgets.dart';

class GalleryItem {
  GalleryItem({this.id, this.resource, this.isSvg = false});

  final String id;
  final String resource;
  final bool isSvg;
}

class GalleryItemThumbnail extends StatelessWidget {
  const GalleryItemThumbnail(
      {Key key, this.galleryItem, this.onTap})
      : super(key: key);

  final GalleryItem galleryItem;

  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: onTap,
        child: Hero(
          tag: galleryItem.id,
          child: Image.asset(galleryItem.resource, height: 80.0, width: 80,),
        ),
      ),
    );
  }
}

List<GalleryItem> galleryItems = <GalleryItem>[
  GalleryItem(
    id: "mountain",
    resource: "assets/mountain.jpg",
  ),
  GalleryItem(id: "simpson", resource: "assets/homer-simpson.svg", isSvg: true),
  GalleryItem(
    id: "mountain 1",
    resource: "assets/mountain1.jpg",
  ),
  GalleryItem(
    id: "girls",
    resource: "assets/girls.jpg",
  ),
];