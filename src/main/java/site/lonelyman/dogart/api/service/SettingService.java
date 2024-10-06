package site.lonelyman.dogart.api.service;

import site.lonelyman.dogart.api.constant.SettingOptionEnum;
import site.lonelyman.dogart.api.entity.Setting;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2024/10/6
 */


public interface SettingService extends IService<Setting> {


    void updateOption(SettingOptionEnum option, List<Object> itemValues);

    Setting getSettingOption(SettingOptionEnum option);
}
