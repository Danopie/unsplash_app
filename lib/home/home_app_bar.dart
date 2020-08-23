import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:unsplash_app/res/color.dart';

class UnsplashLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://images.g2crowd.com/uploads/product/image/social_landscape/social_landscape_4f2153ce7e0ebcddea8a5d6dc9787757/unsplash.png",
      height: 20,
      width: 20,
    );
  }
}

class UnsplashAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: UnsplashLogo(),
      actions: [
        IconButton(
            icon: Icon(
              Icons.menu,
              color: boulder,
            ),
            onPressed: () {}),
      ],
      floating: true,
      pinned: false,
      snap: true,
      backgroundColor: Colors.white,
      elevation: 0,
      title: SearchBar(),
    );
  }
}

class SearchBar extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    final focusNode = useFocusNode();
    useListenable(focusNode);
    useListenable(textController);

    final isFocused = focusNode.hasFocus;

    return AnimatedContainer(
      height: 38,
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
          color: isFocused ? Colors.white : Colors.grey[200],
          borderRadius: BorderRadius.circular(19),
          border: isFocused ? Border.all(color: boulder) : null),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            Icons.search,
            color: boulder,
            size: 20,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                controller: textController,
                focusNode: focusNode,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search photos",
                ),
              ),
            ),
          ),
          if (textController.text != null && textController.text.length > 0)
            Icon(
              Icons.clear,
              size: 20,
              color: boulder,
            ),
        ],
      ),
    );
  }
}
