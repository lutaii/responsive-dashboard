import 'package:flutter/material.dart';
import 'package:responsive_dashboard/theme/app_colors.dart';

class UserSectionWidget extends StatelessWidget {
  const UserSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        children: [
          Image.asset(
            'assets/icons/avatar.png',
            width: 48,
            height: 48,
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: AppColors.textColor,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                'Jenifer Feroz',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: AppColors.textColor,
                    ),
              )
            ],
          )
        ],
      ),
    );
  }
}
