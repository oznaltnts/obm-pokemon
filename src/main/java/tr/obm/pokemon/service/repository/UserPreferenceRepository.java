package tr.obm.pokemon.service.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import tr.obm.pokemon.service.domain.UserPreference;

public interface UserPreferenceRepository extends JpaRepository<UserPreference, Long> {

    UserPreference findByUserId(Long userId);
}
