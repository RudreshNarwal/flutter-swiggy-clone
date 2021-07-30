import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/spotlight_best_top_food.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/mobile/spotlight_best_top_food_item.dart';

class TopOffersViews extends StatelessWidget {
  const TopOffersViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Icon(Icons.security),
                    UIHelper.horizontalSpaceExtraSmall,
                    Text(
                      'Top Offers',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 20.0),
                    ),
                    const Spacer(),
                    Row(
                      children: <Widget>[
                        Text(
                          'SEE ALL',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        UIHelper.horizontalSpaceExtraSmall,
                        ClipOval(
                          child: Container(
                            alignment: Alignment.center,
                            color: swiggyOrange,
                            height: 25.0,
                            width: 25.0,
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              size: 12.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                UIHelper.verticalSpaceExtraSmall,
                Text(
                  'Get 20-50% Off',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
          UIHelper.verticalSpaceMedium,
          LimitedBox(
            maxHeight: 270.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: SpotlightBestTopFood.topRestaurants.length,
              itemBuilder: (context, index) => SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SpotlightBestTopFoodItem(
                        restaurant: SpotlightBestTopFood.topRestaurants[index]
                            [0]),
                    SpotlightBestTopFoodItem(
                        restaurant: SpotlightBestTopFood.topRestaurants[index]
                            [1])
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
