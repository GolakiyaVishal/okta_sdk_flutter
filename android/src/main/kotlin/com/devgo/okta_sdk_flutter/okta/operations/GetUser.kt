package com.devgo.okta_sdk_flutter.okta.operations

import com.okta.oidc.RequestCallback
import com.okta.oidc.clients.web.WebAuthClient
import com.okta.oidc.net.response.UserInfo
import com.okta.oidc.util.AuthorizationException
import com.devgo.okta_sdk_flutter.okta.entities.Errors
import com.devgo.okta_sdk_flutter.okta.entities.OktaClient
import com.devgo.okta_sdk_flutter.okta.entities.PendingOperation


fun getUser() {
    val sessionClient = OktaClient.getWebClient().sessionClient
    sessionClient.getUserProfile(object : RequestCallback<UserInfo, AuthorizationException> {
        override fun onSuccess(result: UserInfo) {
            PendingOperation.success(result.toString())
        }

        override fun onError(error: String, exception: AuthorizationException) {
            PendingOperation.error(Errors.OKTA_OIDC_ERROR, exception.errorDescription)
        }
    })
}
