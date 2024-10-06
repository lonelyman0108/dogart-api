package site.lonelyman.dogart.api.constant;

import lombok.Getter;
import site.lonelyman.dogart.api.model.dto.setting.AbstractSettingOptionFormItem;
import site.lonelyman.dogart.api.model.dto.setting.SettingOptionFormInputItem;
import site.lonelyman.dogart.api.model.dto.setting.SettingOptionFormSelectItem;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2024/10/6
 */

@Getter
public enum SettingOptionFormItemTypeEnum {
    INPUT("input", SettingOptionFormInputItem.class),
    SELECT("select", SettingOptionFormSelectItem.class);

    private final String name;
    private final Class<? extends AbstractSettingOptionFormItem> clazz;


    SettingOptionFormItemTypeEnum(String name, Class<? extends AbstractSettingOptionFormItem> clazz) {
        this.name = name;
        this.clazz = clazz;
    }

    public static SettingOptionFormItemTypeEnum getByName(String name) {
        for (SettingOptionFormItemTypeEnum value : values()) {
            if (value.name.equals(name)) {
                return value;
            }
        }
        return null;
    }
}
