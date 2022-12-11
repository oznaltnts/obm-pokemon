package tr.obm.pokemon.service.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "ref_fast_move_pvp")
public class FastMovePvp extends AbstractEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @ManyToOne
    @JoinColumn(name = "primary_type_id", referencedColumnName = "id", nullable = false)
    private Type primaryType;

    @Column(name = "power", nullable = false)
    private Integer power;

    @Column(name = "energy", nullable = false)
    private Integer energy;

    @Column(name = "turns", nullable = false)
    private Integer turns;

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(name = "pokemon_fast_move_pvp", joinColumns = @JoinColumn(name = "fast_move_id"), inverseJoinColumns = @JoinColumn(name = "pokemon_id"))
    private List<Pokemon> pokemonList;

}
