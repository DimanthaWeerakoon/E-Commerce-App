import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SettingsMenuTile extends StatelessWidget {
  const SettingsMenuTile({super.key, required this.icon, required this.title, required this.subTitle, this.trailling, this.onPressed});

  final IconData icon;
  final String title, subTitle;
  final Widget? trailling;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Icon(icon, size: 28, color: EColors.primary,),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium,), 
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium,), 
      trailing: trailling,
    );
  }
}