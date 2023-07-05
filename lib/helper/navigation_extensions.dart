import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nsight_submodule_demo/helper/navigation_helper.dart';

extension NavigationStateExtensions on State {
  Future<dynamic> pushTo({
    required NSRoutes destination,
    bool? isFullScreenDialog,
  }) =>
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     fullscreenDialog: isFullScreenDialog ?? false,
      //     builder: (context) => destination,
      //   ),
      // );

      Navigator.pushNamed(context, "/${destination.name}");

  Future<dynamic> pushToTop({
    required dynamic destination,
    bool? isFullScreenDialog,
  }) =>
      Navigator.push(
        context,
        CupertinoPageRoute(
          fullscreenDialog: true,
          builder: (context) => destination,
        ),
      );

  void pop() => Navigator.of(context).pop();

  Future<dynamic> replaceTo({dynamic destination}) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => destination),
      );
}
