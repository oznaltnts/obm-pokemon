package tr.obm.pokemon.service.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import tr.obm.pokemon.service.domain.PokemonEvolution;

public interface PokemonEvolutionRepository extends JpaRepository<PokemonEvolution, Long> {


}
