package site.lonelyman.dogart.api.model.dto.setting;

import lombok.Data;
import lombok.experimental.SuperBuilder;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2024/10/6
 */

@Data
@SuperBuilder
public abstract class AbstractSettingOptionFormItem {

    protected String type;
    protected String name;
    protected String desc;
    protected Object value;
    protected Class<Object> valueType;
    private Object defaultValue;
    private String regex;
    private String regexDesc;
}
