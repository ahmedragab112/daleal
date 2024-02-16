import 'package:daleal/core/utils/color/app_color.dart';
import 'package:daleal/core/utils/style/app_textstyle.dart';
import 'package:flutter/material.dart';

class AgreeToOurTerms extends StatelessWidget {
  const AgreeToOurTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [CustomCheckBox(), AgreeToOurTermsRichText()],
    );
  }
}

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      fillColor: const MaterialStatePropertyAll(AppColor.primaryOrange),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Colors.black, width: 2)),
      value: check,
      onChanged: (value) {
        setState(() {
          check = value!;
        });
      },
    );
  }
}

class AgreeToOurTermsRichText extends StatelessWidget {
  const AgreeToOurTermsRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: 'I agree to the ',
              style: AppTextStyle.font12RegularPoppinsaGrey
                  .copyWith(color: AppColor.primaryOrange)),
          TextSpan(
            text: 'Terms & Conditions',
            style: AppTextStyle.font12RegularPoppinsaGrey
                .copyWith(color: AppColor.primaryOrange)
                .copyWith(decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}
