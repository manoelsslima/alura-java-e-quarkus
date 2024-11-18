package br.com.alura.resource;

import br.com.alura.model.Usuario;
import jakarta.annotation.security.PermitAll;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.MediaType;

@Path("/usuarios")
public class UsuarioResource {

    @POST
    @PermitAll // permite chamadas sem validar as roles, já que é cadastro
    @Transactional
    @Consumes(MediaType.APPLICATION_JSON)
    public void inserir(Usuario usuario) {
        Usuario.adicionar(usuario);
    }
}
