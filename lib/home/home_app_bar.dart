import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:unsplash_app/core/widget/context_menu.dart';
import 'package:unsplash_app/res/color.dart';
import 'package:unsplash_app/search/search_page.dart';
import 'package:unsplash_app/res/text.dart';

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

class UnsplashAppBar extends StatefulWidget {
  final String initialSearchText;
  final Function(String) onUserSearch;
  final bool clearOnSearch;

  const UnsplashAppBar(
      {Key key, this.initialSearchText, this.onUserSearch, this.clearOnSearch})
      : super(key: key);

  @override
  _UnsplashAppBarState createState() => _UnsplashAppBarState();
}

class _UnsplashAppBarState extends State<UnsplashAppBar> {
  @override
  Widget build(BuildContext context) {
    final isFirst = ModalRoute.of(context).isFirst;

    return SliverAppBar(
      leading: isFirst
          ? UnsplashLogo()
          : BackButton(
              color: boulder,
            ),
      actions: [
        Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: boulder,
              ),
              onPressed: () {
                ContextMenu.show(
                  context,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: List<Widget>.generate(5, (i) => Container(
                      margin: EdgeInsets.all(12),
                      child: Text("Item $i").color(Colors.white),
                    )),
                  ),
                );
              },
            );
          },
        ),
      ],
      floating: true,
      pinned: false,
      snap: true,
      backgroundColor: Colors.white,
      elevation: 0,
      title: SearchBar(
        onUserSearch: widget.onUserSearch,
        initialSearchText: widget.initialSearchText,
        clearOnSearch: widget.clearOnSearch,
      ),
    );
  }
}

class SearchBar extends HookWidget {
  final String initialSearchText;
  final Function(String) onUserSearch;
  final bool clearOnSearch;

  SearchBar(
      {this.initialSearchText, this.onUserSearch, this.clearOnSearch = false});

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController(text: initialSearchText);
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
                onSubmitted: (text) {
                  if (text != null && text.isNotEmpty) {
                    onUserSearch(text);
                    if (clearOnSearch) {
                      textController.clear();
                    }
                  }
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search photos",
                ),
              ),
            ),
          ),
          if (textController.text != null && textController.text.length > 0)
            GestureDetector(
              onTap: () {
                textController.clear();
                FocusScope.of(context).unfocus();
              },
              child: Icon(
                Icons.clear,
                size: 20,
                color: boulder,
              ),
            ),
        ],
      ),
    );
  }
}
