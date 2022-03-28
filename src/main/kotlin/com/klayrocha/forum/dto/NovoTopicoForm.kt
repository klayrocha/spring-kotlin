package com.klayrocha.forum.dto

import javax.validation.constraints.NotEmpty
import javax.validation.constraints.NotNull
import javax.validation.constraints.Size

data class NovoTopicoForm(

    @field:NotEmpty @field:Size(
        min = 5,
        max = 100,
        message = "Tamanho inválido deve ter entre 5 e 100"
    ) val titulo: String,
    @field:NotEmpty val mensagem: String,
    @field:NotNull val idCurso: Long,
    @field:NotNull val idAutor: Long,
)