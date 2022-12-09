package tr.obm.pokemon.service.enumConverter;


import tr.obm.pokemon.service.enumtype.EnumStatus;
import tr.obm.pokemon.service.util.enumtype.EnumUtils;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter
public class EnumStatusConverter implements AttributeConverter<EnumStatus, Integer> {

    @Override
    public Integer convertToDatabaseColumn(EnumStatus enumStatus) {
        if (enumStatus == null) {
            return null;
        }
        return enumStatus.getValue();
    }

    @Override
    public EnumStatus convertToEntityAttribute(Integer value) {
        return EnumUtils.getValueEnum(EnumStatus.class, value);
    }
}
