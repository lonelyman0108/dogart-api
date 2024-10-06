package site.lonelyman.dogart.api.entity;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.util.Date;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2024/10/6
 */


/**
 * 设置
 */
@Data
@TableName(value = "setting")
public class Setting {
    /**
     * ID
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 配置类型
     */
    @TableField(value = "`type`")
    private Integer type;

    /**
     * 配置选项名
     */
    @TableField(value = "`option_name`")
    private String optionName;

    /**
     * 配置内容
     */
    @TableField(value = "`data`")
    private String data;

    /**
     * 更新时间
     */
    @TableField(value = "update_time", fill = FieldFill.INSERT_UPDATE)
    private Date updateTime;
}