package site.lonelyman.dogart.api.model.req;

import lombok.Data;

import java.util.List;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2024/10/6
 */

@Data
public class SettingOptionUpdateReq {
    private String optionName;
    private List<Object> itemValues;
}
