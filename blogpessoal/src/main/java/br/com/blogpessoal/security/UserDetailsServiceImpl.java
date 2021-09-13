package br.com.blogpessoal.security;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import br.com.blogpessoal.model.Usuario;
import br.com.blogpessoal.repository.UsuarioRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService{
	
	@Autowired
	private UsuarioRepository usuarioRepository;
	
	@Override
	public UserDetails loadUserByUsername(String Username) throws UsernameNotFoundException{
		Optional<Usuario> usuario = usuarioRepository.findByUsuario(Username);
		usuario.orElseThrow(() -> new UsernameNotFoundException(Username + " not found."));

		return usuario.map(UserDetailsImpl::new).get();
	
	}

}
