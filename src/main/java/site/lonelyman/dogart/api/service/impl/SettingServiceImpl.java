package site.lonelyman.dogart.api.service.impl;

import cn.hutool.core.util.NumberUtil;
import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import site.lonelyman.dogart.api.constant.SettingOptionEnum;
import site.lonelyman.dogart.api.entity.Setting;
import site.lonelyman.dogart.api.mapper.SettingMapper;
import site.lonelyman.dogart.api.model.dto.setting.AbstractSettingOptionFormItem;
import site.lonelyman.dogart.api.service.SettingService;

import java.util.List;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2024/10/6
 */


@Service
public class SettingServiceImpl extends ServiceImpl<SettingMapper, Setting> implements SettingService {
    @Override
    public void updateOption(SettingOptionEnum option, List<Object> itemValues) {
        List<? extends AbstractSettingOptionFormItem> formItems = option.getFormItems();
        for (int i = 0; i < NumberUtil.min(formItems.size(), itemValues.size()); i++) {
            formItems.get(i).setValue(itemValues.get(i));
        }
        Setting setting = new Setting();
        setting.setData(JSONUtil.toJsonStr(formItems));
        this.saveOrUpdate(
                setting,
                new LambdaUpdateWrapper<Setting>()
                        .eq(Setting::getType, option.getType().getId())
                        .eq(Setting::getOptionName, option.getName())
        );
    }

    @Override
    public Setting getSettingOption(SettingOptionEnum option) {
        return this.getOne(
                new LambdaQueryWrapper<Setting>()
                        .eq(Setting::getType, option.getType().getId())
                        .eq(Setting::getOptionName, option.getName())
        );
    }
}
