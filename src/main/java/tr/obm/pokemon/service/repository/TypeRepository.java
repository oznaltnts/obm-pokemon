package tr.obm.pokemon.service.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import tr.obm.pokemon.service.domain.Type;

public interface TypeRepository extends JpaRepository<Type, Long> {


}

