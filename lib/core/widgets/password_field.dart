import 'package:final_project_odc/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class PassworsField extends StatefulWidget {
  const PassworsField({
    super.key,
    this.onSaved,
  });
  final void Function(String?)? onSaved;

  @override
  State<PassworsField> createState() => _PassworsFieldState();
}

class _PassworsFieldState extends State<PassworsField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        obscureText: obscureText,
        onSaved: widget.onSaved,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          child: obscureText
              ? const Icon(
                  Icons.remove_red_eye,
                  color: Color(0xFFC9CECF),
                )
              : const Icon(
                  Icons.visibility_off,
                  color: Color(0xFFC9CECF),
                ),
        ),
        hintText: 'كلمة المرور ',
        textInputType: TextInputType.visiblePassword);
  }
}
