import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/authentication/user/user_controller.dart';
import 'package:unsplash_app/authentication/user/user_state.dart';
import 'package:unsplash_app/core/widget/context_menu.dart';
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

class UnsplashAppBar extends StatefulHookWidget {
  final String initialSearchText;
  final Function(String) onUserSearch;
  final bool clearOnSearch;
  final PreferredSizeWidget? bottom;

  const UnsplashAppBar({
    Key? key,
    required this.initialSearchText,
    required this.onUserSearch,
    this.clearOnSearch = false,
    this.bottom,
  }) : super(key: key);

  @override
  _UnsplashAppBarState createState() => _UnsplashAppBarState();
}

class _UnsplashAppBarState extends State<UnsplashAppBar> {
  @override
  Widget build(BuildContext context) {
    final isFirst = ModalRoute.of(context)!.isFirst;
    final userState = useProvider(userControllerProvider.state);
    return SliverAppBar(
      leading: isFirst
          ? UnsplashLogo()
          : BackButton(
              color: boulder,
            ),
      bottom: widget.bottom,
      actions: [
        if (userState is LoggedInUserState)
          Builder(
            builder: (context) {
              return UnconstrainedBox(
                child: GestureDetector(
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                      userState.profile?.profile_image?.small ?? "",
                    ),
                  ),
                  onTap: () {
                    ContextMenu.show(
                      context,
                      (_) => UserMenu(
                        userInfo: userState.profile,
                      ),
                    );
                  },
                ),
              );
            },
          ),
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
                  (_) => AppMenu(
                    isLoggedIn: userState is LoggedInUserState,
                  ),
                );
              },
            );
          },
        ),
      ],
      floating: false,
      pinned: true,
      snap: false,
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
  final Function(String)? onUserSearch;
  final bool clearOnSearch;

  SearchBar(
      {required this.initialSearchText,
      required this.onUserSearch,
      this.clearOnSearch = false});

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
                  if (text.isNotEmpty) {
                    onUserSearch!(text);
                    if (clearOnSearch) {
                      textController.clear();
                    }
                  }
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: AppLocalizations.of(context)?.searchPrompt,
                ),
              ),
            ),
          ),
          if (textController.text.length > 0)
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
