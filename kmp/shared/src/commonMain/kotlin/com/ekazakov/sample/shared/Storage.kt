package com.ekazakov.sample.shared

interface Storage {
    suspend fun getString(key: String): String?
}
