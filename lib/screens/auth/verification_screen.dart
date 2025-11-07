// screens/auth/verification_screen.dart
import 'package:flutter/material.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_button.dart';
import '../../utils/constants.dart';
import '../home_screen.dart'; // corrected import

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Verification'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: AppConstants.primaryColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Enter Verification Code',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppConstants.primaryColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'We have sent a 6-digit code to your email',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(6, (index) => 
                SizedBox(
                  width: 50,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20),
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            CustomElevatedButton(
              onPressed: () {
                // Handle verification logic
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>const HomeScreen()),
                );
              },
              text: 'Verify Code',
            ),
            const SizedBox(height: 20),
            Center(
              child: CustomTextButton(
                onPressed: () {
                  // Resend code logic
                },
                text: 'Resend Code',
              ),
            ),
          ],
        ),
      ),
    );
  }
}