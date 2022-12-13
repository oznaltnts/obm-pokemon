package tr.obm.pokemon.service.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import tr.obm.pokemon.service.domain.MoveCharge;

public interface MoveChargeRepository extends JpaRepository<MoveCharge, Long> {


}
