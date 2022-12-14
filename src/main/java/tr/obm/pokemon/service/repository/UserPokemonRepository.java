package tr.obm.pokemon.service.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import tr.obm.pokemon.service.domain.UserPokemon;

public interface UserPokemonRepository extends JpaRepository<UserPokemon, Long> {

}
