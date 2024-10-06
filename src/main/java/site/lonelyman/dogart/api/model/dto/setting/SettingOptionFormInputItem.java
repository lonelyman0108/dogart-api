package site.lonelyman.dogart.api.model.dto.setting;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.SuperBuilder;
import site.lonelyman.dogart.api.constant.SettingOptionFormItemTypeEnum;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2024/10/6
 */

@EqualsAndHashCode(callSuper = true)
@Data
@SuperBuilder
public class SettingOptionFormInputItem extends AbstractSettingOptionFormItem {
    {
        this.type = SettingOptionFormItemTypeEnum.INPUT.getName();
    }

    private String placeholder;
}
