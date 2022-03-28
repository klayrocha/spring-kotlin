package com.klayrocha.forum.dto

import com.klayrocha.forum.model.StatusTopico
import java.time.LocalDateTime

data class TopicoView(
    val id: Long? = null,
    val titulo: String,
    val mensagem: String,
    val status: StatusTopico,
    val dataCriacao: LocalDateTime,
)

