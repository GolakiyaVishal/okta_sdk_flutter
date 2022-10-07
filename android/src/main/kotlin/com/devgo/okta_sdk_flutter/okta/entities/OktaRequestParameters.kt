package com.devgo.okta_sdk_flutter.okta.entities

data class OktaRequestParameters(
        var clientId: String,
        var redirectUri: String,
        var endSessionRedirectUri: String,
        var discoveryUri: String,
        var scopes: ArrayList<String>,
        var userAgentTemplate: String = "",
        var requireHardwareBackedKeyStore: Boolean = false
)