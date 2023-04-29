import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, required this.radius, required this.imageUrl});

  factory Avatar.small(imageUrl) {
    return Avatar(radius: 16, imageUrl: imageUrl);
  }

  factory Avatar.medium(imageUrl) {
    return Avatar(radius: 22, imageUrl: imageUrl);
  }

  factory Avatar.large(imageUrl) {
    return Avatar(radius: 44, imageUrl: imageUrl);
  }

  final double radius;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: CachedNetworkImageProvider(imageUrl),
      backgroundColor: Theme.of(context).cardColor,
    );
  }
}
