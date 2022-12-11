package tr.obm.pokemon.service.domain;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import tr.obm.pokemon.service.enumConverter.EnumStatusConverter;
import tr.obm.pokemon.service.enumtype.EnumStatus;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.EntityListeners;
import javax.persistence.MappedSuperclass;
import java.io.Serializable;
import java.time.LocalDateTime;

@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
@Getter
@Setter
public abstract class AbstractStatusEntity implements Serializable {

    @Column(name = "idate", nullable = false)
    @CreatedDate
    private LocalDateTime insertDate;

    @Column(name = "udate")
    @LastModifiedDate
    private LocalDateTime updateDate;

    @Convert(converter = EnumStatusConverter.class)
    @Column(name = "status", nullable = false, columnDefinition = "TINYINT")
    private EnumStatus status;
}
