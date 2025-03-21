import 'package:flutter/material.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';

class BasicAppbar extends StatelessWidget implements PreferredSizeWidget{
  final Widget ? title;

  const BasicAppbar({
    super.key,
    this.title,
    });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent, 
      elevation: 0,
      centerTitle: true,
      title: title ?? const Text(''),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          height: 50,
          width: 50,
        decoration: BoxDecoration(
          color: context.isDarkMode ?  Colors.white.withValues(alpha: 0.03) : Colors.black.withValues(alpha: 0.03),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.arrow_back_ios_new,
          size: 15,
          color: context.isDarkMode ? Colors.white : Colors.black,
        ),
      ),),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}