import 'package:enat_guada/widgets/app_icon.dart';
import 'package:flutter/material.dart';

import '../../util/app_colors.dart';
import '../../util/dimentions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/expandable_text.dart';
import '../../widgets/food_item_card.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/food0.jpg"))),
            ),
          ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 30,
            child: Container(
                padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FoodItemCard(
                        text: "Chinese Side",
                        titleFontSize: Dimensions.font26,
                        rating: 4.5,
                        comments: 1287),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(text: "Introduce"),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                          child: ExpandableText(
                              text:
                                  "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with onions, fresh coriander cilantro, then par boiled lightly spiced rice.")),
                    )
                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.symmetric(
          vertical: Dimensions.height30,
          horizontal: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width20,
                  vertical: Dimensions.height20 - 1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(width: Dimensions.width10 / 2),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10 / 2),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20,
                vertical: Dimensions.height20 - 1,
              ),
              decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius20)),
              child: BigText(text: "\$10 Add to cart", color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
