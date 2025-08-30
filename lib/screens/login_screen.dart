import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/theme/app_theme.dart';
import '../routes/app_routes.dart';
import '../widgets/Custom_elevated_button.dart';
import '../widgets/custom_text_from_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: MediaQuery.sizeOf(context).height * 0.12,
                  fit: BoxFit.contain,
                ),

                SizedBox(height: MediaQuery.sizeOf(context).height * 0.09),
                CustomTextFromField(
                  hintText: 'Email',
                  prefixIconImage: 'email',
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email can not be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                CustomTextFromField(
                  hintText: 'Password',
                  prefixIconImage: 'Password',
                  controller: passwordController,
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password can not be empty';
                    }
                    return null;
                  },
                ),
                // Forget Password Button
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget Password ?',
                      style: TextStyle(color: AppTheme.yellow),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CustomElevatedButton(
                  label: 'Login',
                  onPressed: Login,
                  buttonColor: AppTheme.yellow,
                  textColor: AppTheme.darkCharcoal,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  borderRadius: 15,
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t Have Account ?',
                      style: Theme.of(
                        context,
                      ).textTheme.titleSmall!.copyWith(color: AppTheme.white),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(
                        context,
                      ).pushReplacementNamed(AppRoutes.register),
                      child: Text(
                        'Create One',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppTheme.yellow,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Divider(color: AppTheme.yellow, thickness: 1),
                    ),
                    SizedBox(width: 8),
                    Text('OR', style: TextStyle(color: AppTheme.yellow)),
                    SizedBox(width: 8),
                    SizedBox(
                      width: 100,
                      child: Divider(color: AppTheme.yellow, thickness: 1),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                CustomElevatedButton(
                  label: 'Login With Google',
                  onPressed: LoginWithGoogle,
                  buttonColor: AppTheme.yellow,
                  textColor: AppTheme.darkCharcoal,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  borderRadius: 15,
                  icon: SvgPicture.asset(
                    'assets/icons/google_icon.svg',
                    height: 24,
                    width: 24,
                  ),
                ),
                const SizedBox(height: 30),
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

  void Login() {
    if (formKey.currentState!.validate()) {
      Navigator.of(context).pushReplacementNamed(AppRoutes.home);
    }
  }

  void LoginWithGoogle() async {
    Navigator.of(context).pushReplacementNamed(AppRoutes.home);
  }
}
