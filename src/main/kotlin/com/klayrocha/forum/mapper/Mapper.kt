package com.klayrocha.forum.mapper

interface Mapper<T, U> {
    fun map(t: T): U
}