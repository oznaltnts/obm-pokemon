package tr.obm.pokemon.service.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import tr.obm.pokemon.service.domain.Family;

public interface FamilyRepository extends JpaRepository<Family, Long> {


}

