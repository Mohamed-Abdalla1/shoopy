import 'package:flutter/material.dart';
import 'package:shoppy/core/common/widgets/curved_widget.dart';
import 'package:shoppy/core/common/widgets/tCircular_container.dart';
import 'package:shoppy/core/utils/constants/colors.dart';

class PrimaryHeaderHomePage extends StatelessWidget {
  const PrimaryHeaderHomePage({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: TColors.primary,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  backGroundColor: TColors.textWhite.withOpacity(0.5),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  backGroundColor: TColors.textWhite.withOpacity(0.5),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
