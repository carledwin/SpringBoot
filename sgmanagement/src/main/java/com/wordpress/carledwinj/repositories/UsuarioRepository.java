package com.wordpress.carledwinj.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;

import com.wordpress.carledwinj.model.Usuario;

@org.springframework.stereotype.Repository
public interface UsuarioRepository extends Repository<Usuario, Long>{
	
	@Query("SELECT DISTINCT(u) FROM Usuario u WHERE u.id=:id")
	public Usuario findOneById(@Param("id") Long id);
	
	public List<Usuario> findAll();
	
	public  Usuario save(Usuario usuario);
}
