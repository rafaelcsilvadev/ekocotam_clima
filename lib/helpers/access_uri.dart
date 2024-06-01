import 'package:url_launcher/url_launcher.dart';

class AccessUri {
  final String uri;

  const AccessUri({required String this.uri});

  accessUri() async {
    var getUri = Uri.parse(uri);

    await launchUrl(getUri);
  }
}