import 'package:eccomerce_flutter/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class OSettingsMenuTitle extends StatelessWidget {
 final IconData? icon;
 final String title;
 final String subTile;
 final Widget?  trailing;
 final VoidCallback? onTap;
 
  const OSettingsMenuTitle({
    super.key, 
    this.icon, 
    required this.title, 
    required this.subTile, 
    this.trailing, 
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: TColors.primaryColor,),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTile, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}