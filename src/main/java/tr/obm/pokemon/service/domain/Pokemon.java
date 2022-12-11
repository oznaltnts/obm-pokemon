package tr.obm.pokemon.service.domain;

import lombok.Getter;
import lombok.Setter;
import tr.obm.pokemon.service.enumtype.Category;
import tr.obm.pokemon.service.enumtype.Generation;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "ref_pokemon")
public class Pokemon extends AbstractEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @ManyToOne
    @JoinColumn(name = "primary_type_id", referencedColumnName = "id", nullable = false)
    private Type primaryType;

    @ManyToOne
    @JoinColumn(name = "secondary_type_id", referencedColumnName = "id")
    private Type secondaryType;


    @Column(name = "attack", nullable = false)
    private Integer attack;

    @Column(name = "defense", nullable = false)
    private Integer defense;

    @Column(name = "stamina", nullable = false)
    private Integer stamina;

    @Column(name = "generation", nullable = false)
    @Enumerated(EnumType.STRING)
    private Generation generation;


    @Column(name = "category", nullable = false)
    @Enumerated(EnumType.STRING)
    private Category category;

    @Column(name = "charge_move_stardust", nullable = false)
    private Integer chargeMoveStardust;

    @Column(name = "charge_move_candy", nullable = false)
    private Integer chargeMoveCandy;

    @Column(name = "buddy_distance", nullable = false)
    private Double buddyDistance;


    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(name = "pokemon_evolution", joinColumns = @JoinColumn(name = "pokemon_id"), inverseJoinColumns = @JoinColumn(name = "evolution_id"))
    private List<Pokemon> roleList;


}
