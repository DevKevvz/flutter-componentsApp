import 'package:flutter/material.dart';
import 'package:components_app/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'name': 'Kevin',
      'lastname': 'Feliz',
      'email': 'kev@gmail.com',
      'password': '12345',
      'role': 'Admin'
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('Input Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    placeHolder: 'User Name',
                    label: 'Name',
                    helperTxt: 'Only Letters',
                    sufixIcon: Icons.person,
                    formProperty: 'name',
                    fromValues: formValues,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomInputField(
                    placeHolder: 'User LastName',
                    label: 'LastName',
                    helperTxt: 'Only Letters',
                    sufixIcon: Icons.co_present_outlined,
                    formProperty: 'lastname',
                    fromValues: formValues,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomInputField(
                    placeHolder: 'User Email',
                    label: 'Email',
                    helperTxt: 'user@mail.com',
                    sufixIcon: Icons.mail,
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    fromValues: formValues,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomInputField(
                    placeHolder: 'User Password',
                    label: 'Password',
                    helperTxt: '6 characters min',
                    sufixIcon: Icons.password,
                    isPassword: true,
                    formProperty: 'password',
                    fromValues: formValues,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  DropDownCustom(
                    fromValues: formValues,
                    formProperty: 'role',
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        //minimizar el teclado
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          print('No valido');
                          return;
                        }
                        //print values
                        print(formValues);
                      },
                      child: const SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: Center(child: Text('Save Form'))))
                ],
              ),
            ),
          ),
        ));
  }
}
