import 'package:flutter/material.dart';
import 'package:world_general_info/ui_theme/my_app_theme.dart';


class TitleView extends StatelessWidget {
  final String titleTxt;
  final String subTxt;
  //final AnimationController animationController;
  //final Animation animation;

  const TitleView(
      {Key key,
      this.titleTxt: "",
      this.subTxt: "",
     // this.animationController,
     // this.animation
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        titleTxt,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: MyAppTheme.fontName,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          letterSpacing: 1.3,
                          color: MyAppTheme.nearlyWhite,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: <Widget>[
                          Text(
                            subTxt,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: MyAppTheme.fontName,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              letterSpacing: 1.2,
                              color: MyAppTheme.nearlyWhite,
                            ),
                          ),
                          SizedBox(
                            height: 38,
                            width: 36,
                            child: Icon(
                              Icons.arrow_forward,
                              color: MyAppTheme.white,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
  }
}
