package com.devgo.okta_sdk_flutter.okta.operations

import com.okta.oidc.clients.web.WebAuthClient
import com.devgo.okta_sdk_flutter.okta.entities.Errors
import com.devgo.okta_sdk_flutter.okta.entities.OktaClient
import com.devgo.okta_sdk_flutter.okta.entities.PendingOperation

fun getAccessToken() {

    var sessionClient = OktaClient.getWebClient().sessionClient
    var tokens = sessionClient.tokens

    if (tokens.accessToken == null) {
        PendingOperation.error(Errors.NO_ACCESS_TOKEN)
    } else {
        PendingOperation.success(tokens.accessToken)
    }
}
