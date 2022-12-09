package tr.obm.pokemon.service.enumtype;


import tr.obm.pokemon.service.util.enumtype.ValueEnum;

import java.util.List;

public enum EnumStatus implements ValueEnum<Integer> {
    DELETED(-1),
    PASSIVE(0),
    ACTIVE(1);

    private final Integer value;

    EnumStatus(Integer value) {
        this.value = value;
    }

    public static EnumStatus[] convertStringToStatusEnum(List<String> enumStringList) {
        if (enumStringList == null || enumStringList.isEmpty())
            return new EnumStatus[]{};
        return (EnumStatus[]) enumStringList.stream().map(EnumStatus::valueOf).toArray();
    }

    public static EnumStatus[] getActivePassiveStatusesWhenSelectedStatusIsEmpty(EnumStatus[] statuses) {
        if (statuses == null || statuses.length == 0)
            return getActiveAndPassiveStatuses();
        else
            return statuses;
    }

    public static EnumStatus[] getActiveAndPassiveStatuses() {
        return new EnumStatus[]{ACTIVE, PASSIVE};
    }

    @Override
    public Integer getValue() {
        return value;
    }
}
