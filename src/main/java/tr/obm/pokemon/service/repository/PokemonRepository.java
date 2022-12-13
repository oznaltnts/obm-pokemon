package tr.obm.pokemon.service.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import tr.obm.pokemon.service.domain.Pokemon;

public interface PokemonRepository extends JpaRepository<Pokemon, Long> {


}

