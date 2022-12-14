package tr.obm.pokemon.service.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import tr.obm.pokemon.service.domain.UserFamily;

public interface UserFamilyRepository extends JpaRepository<UserFamily, Long> {

}
