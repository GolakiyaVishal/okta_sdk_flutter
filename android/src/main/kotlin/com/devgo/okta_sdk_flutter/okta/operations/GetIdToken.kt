package com.devgo.okta_sdk_flutter.okta.operations

import com.okta.oidc.clients.web.WebAuthClient
import com.devgo.okta_sdk_flutter.okta.entities.Errors
import com.devgo.okta_sdk_flutter.okta.entities.OktaClient
import com.devgo.okta_sdk_flutter.okta.entities.PendingOperation

fun getIdToken() {

    var sessionClient = OktaClient.getWebClient().sessionClient
    var tokens = sessionClient.tokens

    if (tokens.idToken == null) {
        PendingOperation.error(Errors.NO_ID_TOKEN)
    } else {
        PendingOperation.success(tokens.idToken)
    }
}
