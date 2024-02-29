import '../../../core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class RememberMeWidget extends StatelessWidget {
  const RememberMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  height: 24.0,
                  width: 24.0,
                  child: Checkbox(
                      value: false,
                      onChanged: (value){},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),),

                  )
              ),
              // You can play with the width to adjust your
              // desired spacing
              const SizedBox(width: 10.0),
              Text("Remember me",
              style: TextStyles.font14greyColorRegularWeight.copyWith(
                color: Colors.grey[500]
              ),)
            ]
        )
    );
  }
}
