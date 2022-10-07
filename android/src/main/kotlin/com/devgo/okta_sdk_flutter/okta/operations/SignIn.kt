package com.devgo.okta_sdk_flutter.okta.operations

import android.app.Activity
import com.okta.oidc.AuthorizationStatus
import com.okta.oidc.RequestCallback
import com.okta.oidc.ResultCallback
import com.okta.oidc.Tokens
import com.okta.oidc.clients.sessions.SessionClient
import com.okta.oidc.net.response.UserInfo
import com.okta.oidc.util.AuthorizationException
import com.devgo.okta_sdk_flutter.okta.entities.Constants
import com.devgo.okta_sdk_flutter.okta.entities.Errors
import com.devgo.okta_sdk_flutter.okta.entities.OktaClient
import com.devgo.okta_sdk_flutter.okta.entities.PendingOperation


fun signIn(activity: Activity) {
    registerCallback(activity)
    OktaClient.getWebClient().signIn(activity, null)
}

