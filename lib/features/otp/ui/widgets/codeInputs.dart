// ignore_for_file: file_names, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeInputs extends StatefulWidget {
  CodeInputs({super.key});

  @override
  State<CodeInputs> createState() => _CodeInputsState();
}

class _CodeInputsState extends State<CodeInputs> {
  var formKey;
  var firstNumberController = TextEditingController();
  var secondNumberController = TextEditingController();
  var thirdNumberController = TextEditingController();
  var forthNumberController = TextEditingController();

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                controller: firstNumberController,
                style: Theme.of(context).textTheme.titleLarge,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: const InputDecoration(hintText: '0'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Email';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                controller: secondNumberController,
                style: Theme.of(context).textTheme.titleLarge,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: const InputDecoration(hintText: '0'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Email';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                controller: thirdNumberController,
                style: Theme.of(context).textTheme.titleLarge,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: const InputDecoration(hintText: '0'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Email';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                controller: forthNumberController,
                style: Theme.of(context).textTheme.titleLarge,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: const InputDecoration(hintText: '0'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Email';
                  }
                  return null;
                },
              ),
            )
          ],
        ));
  }
}
