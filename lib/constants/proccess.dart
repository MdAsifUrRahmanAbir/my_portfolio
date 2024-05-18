
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlProcess(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

Future<void> launchWhatsAppProcess(String phoneNumber) async {
  final url = 'https://web.whatsapp.com/send?phone=$phoneNumber';
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}
