package site.lonelyman.dogart.api.constant;

import lombok.Getter;
import site.lonelyman.dogart.api.model.dto.setting.AbstractSettingOptionFormItem;
import site.lonelyman.dogart.api.model.dto.setting.SettingOptionFormInputItem;
import site.lonelyman.dogart.api.model.dto.setting.SettingOptionFormSelectItem;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2024/10/6
 */

@Getter
public enum SettingOptionEnum {
    CONTENT_GENERAL(SettingTypeEnum.CONTENT, "content-general", "内容-通用",
            Arrays.asList(
                    SettingOptionFormSelectItem.builder()
                            .name("启用内容审核服务")
                            .desc("开启后可以对投稿进行内容安全审核，审核后会记录审核结果")
                            .selects(Arrays.asList("关闭", "开启"))
                            .defaultValue("关闭")
                            .build(),
                    SettingOptionFormSelectItem.builder()
                            .name("内容审核API提供商")
                            .selects(Arrays.asList("腾讯云", "阿里云", "百度云"))
                            .build()
            )
    ),
    CONTENT_CHECK_API(SettingTypeEnum.CONTENT, "content-check-api", "内容-审核API",
            Arrays.asList(
                    SettingOptionFormInputItem.builder()
                            .name("腾讯云 - SecretId")
                            .build(),
                    SettingOptionFormInputItem.builder()
                            .name("腾讯云 - SecretKey")
                            .build(),
                    SettingOptionFormInputItem.builder()
                            .name("阿里云 - AccessKey")
                            .build(),
                    SettingOptionFormInputItem.builder()
                            .name("阿里云 - SecretKey")
                            .build(),
                    SettingOptionFormInputItem.builder()
                            .name("百度云 - AccessKey")
                            .build(),
                    SettingOptionFormInputItem.builder()
                            .name("百度云 - SecretKey")
                            .build()
            )
    ),
    ;

    private final SettingTypeEnum type;
    private final String name;
    private final String desc;
    private final List<? extends AbstractSettingOptionFormItem> formItems;

    SettingOptionEnum(SettingTypeEnum type, String name, String desc, List<? extends AbstractSettingOptionFormItem> formItems) {
        this.type = type;
        this.name = name;
        this.desc = desc;
        this.formItems = formItems;
    }

    public static List<SettingOptionEnum> listByType(SettingTypeEnum type) {
        return Arrays.stream(values()).filter(e -> e.type.equals(type)).collect(Collectors.toList());
    }

    public static SettingOptionEnum getByName(String name) {
        return Arrays.stream(values()).filter(e -> e.name.equals(name)).findFirst().orElse(null);
    }
}
