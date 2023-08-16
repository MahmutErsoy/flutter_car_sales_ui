import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors_constants.dart';
import '../../core/constants/string_constants.dart';

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 5,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 0,
              )),
          fillColor: ColorConstants.instance.porcelain,
          contentPadding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 8.h),
          filled: true,
          hintText: StringConstants.writeDescription,
          hintStyle: Theme.of(context).textTheme.headline6),
    );
  }
}

class SelectLocationRow extends StatelessWidget {
  const SelectLocationRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 173.w, child: const SellTextField(hint: StringConstants.location)),
        SizedBox(
          width: 14.w,
        ),
        SizedBox(width: 173.w, child: const SellTextField(hint: StringConstants.price)),
      ],
    );
  }
}

class LocationRow extends StatelessWidget {
  const LocationRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          StringConstants.location,
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(
          width: 133.w,
        ),
        Text(
          StringConstants.carPrice,
          style: Theme.of(context).textTheme.headline3,
        )
      ],
    );
  }
}

class SecondCheckBoxRow extends StatelessWidget {
  const SecondCheckBoxRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check_box_outline_blank_outlined,
          color: ColorConstants.instance.black,
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          StringConstants.bluetooth,
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(
          width: 66.w,
        ),
        Icon(
          Icons.check_box_outline_blank_outlined,
          color: ColorConstants.instance.black,
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          StringConstants.front,
          style: Theme.of(context).textTheme.headline4,
        )
      ],
    );
  }
}

class FirstCheckBoxRow extends StatelessWidget {
  const FirstCheckBoxRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check_box_outline_blank_outlined,
          color: ColorConstants.instance.black,
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          StringConstants.alarm,
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(
          width: 90.w,
        ),
        Icon(
          Icons.check_box_outline_blank_outlined,
          color: ColorConstants.instance.black,
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          StringConstants.cruise,
          style: Theme.of(context).textTheme.headline4,
        )
      ],
    );
  }
}

class SelectBrandRow extends StatelessWidget {
  const SelectBrandRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 173.w, child: const TextFieldSelect(hint: StringConstants.selectBrand)),
        SizedBox(
          width: 14.w,
        ),
        SizedBox(width: 173.w, child: const TextFieldSelect(hint: StringConstants.selectModel)),
      ],
    );
  }
}

class BrandRow extends StatelessWidget {
  const BrandRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          StringConstants.brand,
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(
          width: 133.w,
        ),
        Text(
          StringConstants.model,
          style: Theme.of(context).textTheme.headline3,
        )
      ],
    );
  }
}

class ConditionRow extends StatelessWidget {
  const ConditionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          StringConstants.condition,
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(
          width: 133.w,
        ),
        Text(
          StringConstants.year,
          style: Theme.of(context).textTheme.headline3,
        )
      ],
    );
  }
}

class SellTextField extends StatelessWidget {
  const SellTextField({
    super.key,
    required this.hint,
  });
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 0,
              )),
          fillColor: ColorConstants.instance.porcelain,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 9.w,
          ),
          filled: true,
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.headline6),
    );
  }
}

class TextFieldSelect extends StatelessWidget {
  const TextFieldSelect({
    super.key,
    required this.hint,
  });
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 0,
              )),
          fillColor: ColorConstants.instance.porcelain,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 9.w,
          ),
          filled: true,
          suffixIcon: Icon(
            Icons.keyboard_arrow_down,
            color: ColorConstants.instance.blackPearl,
          ),
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.headline6),
    );
  }
}
