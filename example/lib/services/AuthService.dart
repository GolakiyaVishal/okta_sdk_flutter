import 'package:okta_sdk_flutter/base_request.dart';
import 'package:okta_sdk_flutter/okta_sdk_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthOktaService {
  var oktaSdk = OktaSDK();
  FlutterSecureStorage secureStorage = FlutterSecureStorage();

  static const String OKTA_DOMAIN = 'coachella.okta.com';
  static const String OKTA_AUTHORIZER = 'default';
  static const String OKTA_CLIENT_ID = '0oa29mv0fejaDf4Z25d7';

  static const String OKTA_ISSUER_URL =
      'https://$OKTA_DOMAIN/oauth2/$OKTA_AUTHORIZER';
  static const String OKTA_DISCOVERY_URL =
      'https://$OKTA_DOMAIN/.well-known/openid-configuration';

  static const String OKTA_REDIRECT_URI = 'com.deere.phoenix:/callback';
  static const String OKTA_LOGOUT_REDIRECT_URI = 'com.deere.phoenix:/splash';

  static final oktaBaseRequest = BaseRequest(
      issuer: OKTA_ISSUER_URL,
      clientId: OKTA_CLIENT_ID,
      discoveryUrl: OKTA_DISCOVERY_URL,
      endSessionRedirectUri: OKTA_LOGOUT_REDIRECT_URI,
      redirectUrl: OKTA_REDIRECT_URI,
      scopes: ['openid']);

  Future createConfig() async {
    await oktaSdk.createConfig(oktaBaseRequest);
  }

  Future authorize() async {
    try {
      if (oktaSdk.isInitialized == false) {
        await this.createConfig();
      }
      await oktaSdk.signIn();
    } catch (e) {
      print(e);
    }
  }

  Future logout() async {
    try {
      if (oktaSdk.isInitialized == false) {
        await this.createConfig();
      }
      await oktaSdk.signOut();
    } catch (e) {
      print(e);
    }
  }

  Future getUser() async {
    try {
      if (oktaSdk.isInitialized == false) {
        await this.createConfig();
      }
      return await oktaSdk.getUser();
    } catch (e) {
      print(e);
    }
  }

  Future<bool> isAuthenticated() async {
    try {
      if (oktaSdk.isInitialized == false) {
        await createConfig();
      }
      return await oktaSdk.isAuthenticated();
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<String?> getAccessToken() async {
    try {
      if (oktaSdk.isInitialized == false) {
        await createConfig();
      }
      return await oktaSdk.getAccessToken();
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<String?> getIdToken() async {
    try {
      if (oktaSdk.isInitialized == false) {
        await createConfig();
      }
      return await oktaSdk.getIdToken();
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<bool> revokeAccessToken() async {
    try {
      if (oktaSdk.isInitialized == false) {
        await this.createConfig();
      }
      return await oktaSdk.revokeAccessToken();
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> revokeIdToken() async {
    try {
      if (oktaSdk.isInitialized == false) {
        await this.createConfig();
      }
      return await oktaSdk.revokeIdToken();
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> revokeRefreshToken() async {
    try {
      if (oktaSdk.isInitialized == false) {
        await this.createConfig();
      }
      return await oktaSdk.revokeRefreshToken();
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> clearTokens() async {
    try {
      if (oktaSdk.isInitialized == false) {
        await this.createConfig();
      }
      return await oktaSdk.clearTokens();
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<String?> introspectAccessToken() async {
    try {
      if (oktaSdk.isInitialized == false) {
        await this.createConfig();
      }
      return await oktaSdk.introspectAccessToken();
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<String?> introspectIdToken() async {
    try {
      if (oktaSdk.isInitialized == false) {
        await this.createConfig();
      }
      return await oktaSdk.introspectIdToken();
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<String?> introspectRefreshToken() async {
    try {
      if (oktaSdk.isInitialized == false) {
        await this.createConfig();
      }
      return await oktaSdk.introspectRefreshToken();
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<String?> refreshTokens() async {
    try {
      if (oktaSdk.isInitialized == false) {
        await this.createConfig();
      }
      return await oktaSdk.refreshTokens();
    } catch (e) {
      print(e);
    }
    return null;
  }
}
