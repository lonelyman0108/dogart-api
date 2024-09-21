package site.lonelyman.dogart.api.constant;

import lombok.Getter;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2024/9/21
 */

@Getter
public enum ContentFlagEnum {
    /**
     * 待审核
     */
    UNCHECKED(0),
    /**
     * 正常
     */
    NORMAL(1),
    /**
     * 驳回
     */
    REJECTED(2);

    private final Integer value;

    ContentFlagEnum(Integer value)
    {
        this.value = value;
    }

    public static ContentFlagEnum getByValue(Integer value)
    {
        for (ContentFlagEnum item : ContentFlagEnum.values()) {
            if (item.getValue().equals(value)) {
                return item;
            }
        }
        return null;
    }

}
