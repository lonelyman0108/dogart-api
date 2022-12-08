package site.lonelyman.dogart.api.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @TableName diary
 */
@TableName(value = "diary")
@Data
public class Diary implements Serializable {
    @TableId(type = IdType.AUTO)
    private Integer id;

    private String content;

    private Integer lickCount;

    private Integer flag;

    private String ipAddress;

    private Date createDate;

    private static final long serialVersionUID = 1L;
}