package site.lonelyman.dogart.api.constant;

import lombok.Getter;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2024/10/6
 */

@Getter
public enum SettingTypeEnum {
    GENERAL(1, "general", "通用"),
    CONTENT(2, "content", "内容"),
    ;

    private final Integer id;
    private final String name;
    private final String desc;

    SettingTypeEnum(Integer id, String name, String desc) {
        this.id = id;
        this.name = name;
        this.desc = desc;
    }

    public static SettingTypeEnum getById(Integer id) {
        for (SettingTypeEnum value : SettingTypeEnum.values()) {
            if (value.getId().equals(id)) {
                return value;
            }
        }
        return null;
    }

    public static SettingTypeEnum getByName(String name) {
        for (SettingTypeEnum value : SettingTypeEnum.values()) {
            if (value.getName().equals(name)) {
                return value;
            }
        }
        return null;
    }

}
