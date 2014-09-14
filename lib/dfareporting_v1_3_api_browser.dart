library dfareporting_v1_3_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_dfareporting_v1_3_api/src/browser_client.dart';
import "package:google_dfareporting_v1_3_api/dfareporting_v1_3_api_client.dart";

/** Lets you create, run and download reports. */
@deprecated
class Dfareporting extends Client with BrowserClient {

  /** OAuth Scope2: View and manage DoubleClick for Advertisers reports */
  static const String DFAREPORTING_SCOPE = "https://www.googleapis.com/auth/dfareporting";

  final oauth.OAuth2 auth;

  Dfareporting([oauth.OAuth2 this.auth]);
}
