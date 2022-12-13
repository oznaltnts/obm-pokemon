package tr.obm.pokemon.service.domain;

import lombok.Getter;
import lombok.Setter;
import tr.obm.pokemon.service.enumtype.EnumCategory;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "ref_family")
public class Family extends AbstractEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "category", nullable = false)
    @Enumerated(EnumType.STRING)
    private EnumCategory category;

    @Column(name = "buddy_distance", nullable = false)
    private Integer buddyDistance;

    @OneToMany(mappedBy = "family", fetch = FetchType.LAZY)
    private List<Pokemon> familyList;

}
