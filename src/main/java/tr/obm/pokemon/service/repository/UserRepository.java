package tr.obm.pokemon.service.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import tr.obm.pokemon.service.domain.User;
import tr.obm.pokemon.service.enumtype.EnumStatus;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findByUsernameAndStatus(String username, EnumStatus status);

    Optional<User> findById(Long userId);

    List<User> findByStatusIn(EnumStatus[] statusList);

    User findByUsername(String username);

}

