package site.lonelyman.dogart.api.model.req;

import lombok.Data;

import javax.validation.constraints.NotBlank;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2022/12/7
 */
@Data
public class WordsPostReq {

    @NotBlank(message = "内容不能为空")
    private String content;

}
