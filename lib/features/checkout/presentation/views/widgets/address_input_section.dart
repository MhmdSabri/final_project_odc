import 'package:final_project_odc/core/widgets/custom_text_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entites/order_entity.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection(
      {super.key, required this.formKey, required this.valueListenable});

  final GlobalKey<FormState> formKey;
  final ValueListenable<AutovalidateMode> valueListenable;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder<AutovalidateMode>(
        valueListenable: valueListenable,
        builder: (context, value, child) => Form(
          key: formKey,
          autovalidateMode: value,
          child: Column(
            children: [
               SizedBox(
                height: 24.h,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderInputEntity>().shippingAddressEntity.name =
                      value!;
                },
                hintText: 'الاسم كامل',
                textInputType: TextInputType.text,
              ),
               SizedBox(
                height: 16.h,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderInputEntity>().shippingAddressEntity.email =
                      value!;
                },
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.text,
              ),
               SizedBox(
                height: 16.h,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  context
                      .read<OrderInputEntity>()
                      .shippingAddressEntity
                      .address = value!;
                },
                hintText: 'العنوان',
                textInputType: TextInputType.text,
              ),
               SizedBox(
                height: 16.h,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderInputEntity>().shippingAddressEntity.city =
                      value!;
                },
                hintText: 'المدينه',
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderInputEntity>().shippingAddressEntity.floor =
                      value!;
                },
                hintText: 'رقم الطابق , رقم الشقه ..',
                textInputType: TextInputType.text,
              ),
               SizedBox(
                height: 16.h,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderInputEntity>().shippingAddressEntity.phone =
                      value!;
                },
                hintText: 'رقم الهاتف',
                textInputType: TextInputType.number,
              ),
               SizedBox(
                height: 16.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
