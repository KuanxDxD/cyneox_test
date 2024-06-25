import 'package:cyneox_test/helpers/constants/constants.dart';
import 'package:cyneox_test/helpers/utils/font_util.dart';
import 'package:cyneox_test/providers/login_page_provider.dart';
import 'package:cyneox_test/uis/widgets/base_button.dart';
import 'package:cyneox_test/uis/widgets/base_dropdown.dart';
import 'package:cyneox_test/uis/widgets/base_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginPageProvider>(
      builder: (context, provider, child) => Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1Dgldf0YWGo41dugx2VJX10gUuhVVnMekUg&s',
                  height: 80,
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Mobile Number',
                  style: TextStyle(
                    fontSize: getRegularFontSize(context),
                    color: primaryColor,
                  ),
                ),
              ),
              BaseTextFormField(
                controller: provider.phoneNoController,
                maxLines: 1,
                fontSize: get2XLFontSize(context),
                prefixIcon: Container(
                  width: 80,
                  padding: const EdgeInsets.only(left: 20),
                  child: BaseDropDown(
                    inputs: provider.phoneCodes,
                    initialValue: provider.phoneCode,
                    onChanged: (value) => provider.setPhoneCode(value),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'NRIC Number',
                  style: TextStyle(
                    fontSize: getRegularFontSize(context),
                    color: primaryColor,
                  ),
                ),
              ),
              BaseTextFormField(
                controller: provider.nricController,
                maxLines: 1,
                hintText: 'Your NRIC Number',
                hintTextStyle: TextStyle(
                  fontSize: getXLFontSize(context),
                  color: whiteColor,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontSize: getRegularFontSize(context),
                    color: primaryColor,
                  ),
                ),
              ),
              BaseTextFormField(
                controller: provider.passwordController,
                maxLines: 1,
                hintText: 'Your Password',
                hintTextStyle: TextStyle(
                  fontSize: getXLFontSize(context),
                  color: whiteColor,
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: BaseButton(
                    onPressed: provider.login,
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: getXLFontSize(context),
                        color: whiteColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: Text(
                  'Don\'t have an account yet?',
                  style: TextStyle(
                    fontSize: getRegularFontSize(context),
                    color: greyColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(
                  'Register Now',
                  style: TextStyle(
                    fontSize: getRegularFontSize(context),
                    color: primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
