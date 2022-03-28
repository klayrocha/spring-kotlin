package com.klayrocha.forum.service

import com.klayrocha.forum.exception.ForumNotFoundException
import com.klayrocha.forum.model.Usuario
import com.klayrocha.forum.repository.UsuarioRepository

import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.stereotype.Service


@Service
class UsuarioService (
    private val repository: UsuarioRepository
) : UserDetailsService {

    fun buscarPorId(id: Long): Usuario {
        return repository.getById(id)
    }

    override fun loadUserByUsername(username: String?): UserDetails {
        val usuario = repository.findByEmail(username) ?: throw ForumNotFoundException("Usuário não encontrado")
        return UserDetail(usuario)
    }
}

