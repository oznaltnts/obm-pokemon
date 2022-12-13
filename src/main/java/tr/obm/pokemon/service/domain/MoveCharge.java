package tr.obm.pokemon.service.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "ref_move_charge")
public class MoveCharge extends AbstractEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @ManyToOne
    @JoinColumn(name = "primary_type_id", referencedColumnName = "id", nullable = false)
    private Type primaryType;

    @Column(name = "pvp_power", nullable = false)
    private Integer power;

    @Column(name = "pvp_energy", nullable = false)
    private Integer energy;

    @Column(name = "pvp_turns", nullable = false)
    private Integer turns;

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(name = "pokemon_move_charge", joinColumns = @JoinColumn(name = "ref_move_charge_id"), inverseJoinColumns = @JoinColumn(name = "ref_pokemon_id"))
    private List<Pokemon> pokemonList;

}
