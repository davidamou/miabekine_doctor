import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String url;
  final double? radius;
  const Avatar({super.key, required this.url, this.radius = 32});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      imageBuilder: (context, imageProvider) => CircleAvatar(
        radius: radius,
        backgroundImage: imageProvider,
      ),
      placeholder: (context, url) => CircleAvatar(radius: radius),
      errorWidget: (context, url, error) => CircleAvatar(
        radius: radius,
        child: const Icon(Icons.person_rounded),
      ),
    );
  }
}
