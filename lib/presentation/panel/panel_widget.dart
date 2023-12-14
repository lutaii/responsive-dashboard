import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/panel/widgets/user_section_widget.dart';
import 'package:responsive_dashboard/theme/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PanelWidget extends StatelessWidget {
  const PanelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 52,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserSectionWidget(),
              const SizedBox(height: 56),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Menu',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: AppColors.leftPanelHeader),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      SvgPicture.asset(
                        'icons/home.svg',
                        width: 18,
                        height: 18,
                        colorFilter: const ColorFilter.mode(
                          AppColors.leftPanelInactive,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'Home',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(color: AppColors.leftPanelInactive),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      SvgPicture.asset(
                        'icons/chart-icon.svg',
                        width: 18,
                        height: 18,
                        colorFilter: const ColorFilter.mode(
                          AppColors.leftPanelInactive,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'Insights',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(color: AppColors.leftPanelInactive),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
