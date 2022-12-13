package tr.obm.pokemon.service.domain;

import lombok.Getter;
import lombok.Setter;
import tr.obm.pokemon.service.enumtype.EnumSpecialItem;

import javax.persistence.*;
import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "ref_pokemon_evolution")
public class PokemonEvolution implements Serializable {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "ref_pokemon_id", referencedColumnName = "id", nullable = false)
    private Pokemon pokemon;

    @ManyToOne
    @JoinColumn(name = "evolution_id", referencedColumnName = "id", nullable = false)
    private Pokemon evolution;

    @Column(name = "candy_cost", nullable = false)
    private Integer candyCost;


    @Column(name = "special_item", nullable = false)
    @Enumerated(EnumType.STRING)
    private EnumSpecialItem specialItem;
}
