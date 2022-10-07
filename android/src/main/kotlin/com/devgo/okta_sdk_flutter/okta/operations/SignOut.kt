package com.devgo.okta_sdk_flutter.okta.operations

import android.app.Activity
import com.okta.oidc.clients.web.WebAuthClient
import com.devgo.okta_sdk_flutter.okta.entities.OktaClient
import com.devgo.okta_sdk_flutter.okta.entities.PendingOperation

fun signOut(activity: Activity) {
    registerCallback(activity)
    OktaClient.getWebClient().signOutOfOkta(activity)
}