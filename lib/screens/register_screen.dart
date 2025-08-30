import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/theme/app_theme.dart';
import '../routes/app_routes.dart';
import '../widgets/Custom_elevated_button.dart';
import '../widgets/custom_text_from_field.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController RepasswordController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
        backgroundColor: AppTheme.primary,
        foregroundColor: AppTheme.yellow,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () =>
              Navigator.of(context).pushReplacementNamed(AppRoutes.login),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: CircleAvatar(
                        radius: 47,
                        backgroundColor: AppTheme.darkCharcoal,
                        backgroundImage: AssetImage(
                          'assets/images/Avatar3.png',
                        ),
                      ),
                    ),
                    Flexible(
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: AppTheme.darkCharcoal,
                        backgroundImage: AssetImage(
                          'assets/images/Avatar1.png',
                        ),
                      ),
                    ),
                    Flexible(
                      child: CircleAvatar(
                        radius: 47,
                        backgroundColor: AppTheme.darkCharcoal,
                        backgroundImage: AssetImage(
                          'assets/images/Avatar2.png',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                const Text(
                  'Avatar',
                  style: TextStyle(color: AppTheme.white, fontSize: 16),
                ),
                SizedBox(height: 16),
                CustomTextFromField(
                  hintText: 'Name',
                  prefixIconImage: 'name',
                  controller: nameController,
                ),
                SizedBox(height: 20),
                CustomTextFromField(
                  hintText: 'Email',
                  prefixIconImage: 'email',
                  controller: emailController,
                ),
                SizedBox(height: 20),
                CustomTextFromField(
                  hintText: 'Password',
                  prefixIconImage: 'Password',
                  controller: passwordController,
                  isPassword: true,
                ),
                SizedBox(height: 20),
                CustomTextFromField(
                  hintText: 'Confirm Password',
                  prefixIconImage: 'Password',
                  controller: RepasswordController,
                  isPassword: true,
                ),
                SizedBox(height: 20),
                CustomTextFromField(
                  hintText: 'Phone Number',
                  prefixIconImage: 'phone',
                  controller: PhoneController,
                  isPassword: false,
                ),
                SizedBox(height: 25),
                CustomElevatedButton(
                  label: 'Create Account',
                  onPressed: createAccount,
                  buttonColor: AppTheme.yellow,
                  textColor: AppTheme.darkCharcoal,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  borderRadius: 15,
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already Have Account ?',
                      style: Theme.of(
                        context,
                      ).textTheme.titleSmall!.copyWith(color: AppTheme.white),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(
                        context,
                      ).pushReplacementNamed(AppRoutes.login),
                      child: Text(
                        'Login',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppTheme.yellow,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppTheme.yellow, width: 2),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppTheme.yellow,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: SvgPicture.asset('assets/icons/LR.svg'),
                          ),
                          const SizedBox(width: 20, height: 30),
                          SvgPicture.asset('assets/icons/EG.svg'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void createAccount() {
    if (formKey.currentState!.validate()) {
      Navigator.of(context).pushReplacementNamed(AppRoutes.home);
    }
  }
}
