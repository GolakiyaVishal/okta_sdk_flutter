package com.devgo.okta_sdk_flutter.okta.operations

import com.okta.oidc.clients.AuthClient
import com.okta.oidc.clients.web.WebAuthClient
import com.devgo.okta_sdk_flutter.okta.entities.OktaClient
import com.devgo.okta_sdk_flutter.okta.entities.PendingOperation

fun clearTokens() {
    OktaClient.getWebClient().sessionClient.clear()
    OktaClient.getAuthClient().sessionClient.clear()

    PendingOperation.success(true)
}


