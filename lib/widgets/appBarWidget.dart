import 'package:flutter/material.dart';
import 'package:one_call/utils/constants.dart';
import 'package:one_call/utils/theme.dart';

class AppBarWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState>? scaffoldState;
  final String? title, subtitle;

  const AppBarWidget({Key? key, this.scaffoldState, this.subtitle, this.title})
      : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  final FocusNode _focusNode = FocusNode();

  OverlayEntry _overlayEntry = OverlayEntry(builder: (BuildContext context) {
    return Container();
  });

  OverlayEntry _createOverlayEntry() {
    RenderObject? renderBox = context.findRenderObject();
    // var size = renderBox!.size;

    return OverlayEntry(
        maintainState: true,
        builder: (context) => Positioned(
              width: MediaQuery.of(context).size.width,
              child: CompositedTransformFollower(
                link: this._layerLink,
                showWhenUnlinked: false,
                offset: Offset(0.0, 75 + 5.0),
                child: Material(
                  elevation: 4.0,
                  color: Colors.white,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'Syria',
                          style: AppTheme.regularText,
                        ),
                        onTap: () {
                          print('Syria Tapped');
                        },
                      ),
                      ListTile(
                        title: Text('Lebanon', style: AppTheme.regularText),
                        onTap: () {
                          print('Lebanon Tapped');
                        },
                      )
                    ],
                  ),
                ),
              ),
            ));
  }

  bool x = false;

  final LayerLink _layerLink = LayerLink();

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: this._layerLink,
      child: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15))),
        leading: GestureDetector(
          onTap: () => widget.scaffoldState!.currentState!.openDrawer(),
          child: Icon(
            Icons.menu,
            color: Colors.pink,
            size: 25,
          ),
        ),
        title: GestureDetector(
          onTap: () {
            print(x);
            setState(() {
              x = !x;
            });
            if (x) {
              this._overlayEntry = this._createOverlayEntry();
              Overlay.of(context)!.insert(this._overlayEntry);
            } else
              this._overlayEntry.remove();
          },
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              widget.title!,
              style: AppTheme.heading4BoldPink,
            ),
            Text(
              widget.subtitle!,
              style: AppTheme.regularText,
            ),
          ]),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, rFav),
                  child: Icon(Icons.favorite_border, color: pink))),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, rCart),
                  child: Icon(Icons.add_shopping_cart, color: pink))),
        ],
      ),
    );
  }
}
