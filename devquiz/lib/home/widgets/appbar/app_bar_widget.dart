import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget(): super(
    preferredSize: Size.fromHeight(260),
    child: Container(
      height: 250,
      child: Stack(
        children: [
          Container(
            height: 161,
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Olá, ',
                    style: AppTextStyles.title,
                    children: [
                      TextSpan(
                        text: 'Saulo', style: AppTextStyles.titleBold
                      )
                    ]
                  )
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: NetworkImage(AppImages.avatar)
                    )
                  ),
                )
              ],
            ),
          ),
          Align(alignment: Alignment(0.0, 1.0), child: ScoreCardWidget(),)
          
        ]
      ),
    )
  );
}
