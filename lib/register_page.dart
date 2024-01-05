import 'package:flutter/material.dart';
import 'package:ppb_proyek_akhir/login_page.dart';
import 'package:ppb_proyek_akhir/style.dart';

import 'package:ppb_proyek_akhir/custom_form.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Register',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 24),
              Text('Silakan melakukan pendaftaran', style: textNormal),
              const SizedBox(height: 20),
              CustomForm(
                controller: _fullNameController,
                icon: const Icon(Icons.person),
                label: 'Nama Lengkap',
              ),
              CustomForm(
                controller: _emailController,
                icon: const Icon(Icons.mail),
                label: 'Email',
              ),
              CustomForm(
                controller: _passwordController,
                icon: const Icon(Icons.lock),
                label: 'Password',
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sudah punya akun?', style: textNormal),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => const LoginPage()),
                        ),
                      );
                    },
                    child: Text('Login', style: textLink),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                child: const Text(
                  'Daftar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
