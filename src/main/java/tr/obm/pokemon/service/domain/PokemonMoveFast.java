package tr.obm.pokemon.service.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "pokemon_move_fast")
public class PokemonMoveFast extends AbstractEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "ref_pokemon_id", referencedColumnName = "id", nullable = false)
    private Pokemon pokemon;

    @ManyToOne
    @JoinColumn(name = "ref_move_fast_id", referencedColumnName = "id", nullable = false)
    private MoveFast moveFast;

    @Column(name = "is_elite", nullable = false, columnDefinition = "TINYINT")
    private boolean isElite;
}
