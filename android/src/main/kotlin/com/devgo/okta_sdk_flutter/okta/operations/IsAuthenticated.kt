package com.devgo.okta_sdk_flutter.okta.operations

import com.okta.oidc.clients.web.WebAuthClient
import com.devgo.okta_sdk_flutter.okta.entities.OktaClient
import com.devgo.okta_sdk_flutter.okta.entities.PendingOperation

fun isAuthenticated() {
    val sessionClient = OktaClient.getWebClient().sessionClient
    PendingOperation.success(sessionClient.isAuthenticated)
}


