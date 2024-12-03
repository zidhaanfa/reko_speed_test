package com.zidanfath.plugin.speed_test.reko_speed_test

interface TestListener {

    fun onComplete(transferRate: Double)

    fun onError(speedTestError: String, errorMessage: String)

    fun onProgress(percent: Double, transferRate: Double)

}

