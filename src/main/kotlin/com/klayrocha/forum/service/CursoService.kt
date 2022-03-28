package com.klayrocha.forum.service

import com.klayrocha.forum.model.Curso
import com.klayrocha.forum.repository.CursoRepository
import org.springframework.stereotype.Service

@Service
class CursoService(private val repository: CursoRepository) {

    fun buscarPorId(id: Long): Curso {
        return repository.getById(id)
    }
}
