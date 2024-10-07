package site.lonelyman.dogart.api.controller.admin;

import cn.hutool.json.JSONUtil;
import org.springframework.web.bind.annotation.*;
import site.lonelyman.dogart.api.constant.SettingOptionEnum;
import site.lonelyman.dogart.api.constant.SettingTypeEnum;
import site.lonelyman.dogart.api.entity.Setting;
import site.lonelyman.dogart.api.exception.ApiException;
import site.lonelyman.dogart.api.model.Result;
import site.lonelyman.dogart.api.model.req.SettingOptionUpdateReq;
import site.lonelyman.dogart.api.model.vo.SettingOptionInfoVo;
import site.lonelyman.dogart.api.model.vo.SettingTypeInfoVo;
import site.lonelyman.dogart.api.service.SettingService;

import javax.annotation.Resource;
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

@RequestMapping("admin/setting")
@RestController
//@LoginCheck
public class SettingAdminController {
    @Resource
    private SettingService settingService;

    @GetMapping("types")
    public Result<List<SettingTypeInfoVo>> listTypes() {
        List<SettingTypeInfoVo> vos = Arrays.stream(SettingTypeEnum.values())
                .map(settingTypeEnum -> {
                            SettingTypeInfoVo vo = new SettingTypeInfoVo();
                            vo.setName(settingTypeEnum.getName());
                            vo.setDesc(settingTypeEnum.getDesc());
                            return vo;
                        }
                )
                .collect(
                        Collectors.toList()
                );
        return Result.ok(vos);
    }

    @GetMapping("options")
    public Result<List<SettingOptionInfoVo>> listOptionsByTypeId(@RequestParam("typeName") String typeName) {
        SettingTypeEnum typeEnum = SettingTypeEnum.getByName(typeName);
        if (typeEnum == null) {
            throw new ApiException("参数错误");
        }
        List<SettingOptionInfoVo> vos = SettingOptionEnum.listByType(typeEnum).stream()
                .map(settingOptionEnum -> {
                            SettingOptionInfoVo vo = new SettingOptionInfoVo();
                            vo.setName(settingOptionEnum.getName());
                            vo.setDesc(settingOptionEnum.getDesc().substring(typeEnum.getDesc().length() + 1));
                            return vo;
                        }
                )
                .collect(Collectors.toList());
        return Result.ok(vos);
    }

    @PostMapping("option")
    public Result<Object> updateOption(@RequestBody SettingOptionUpdateReq req) {
        SettingOptionEnum optionEnum = SettingOptionEnum.getByName(req.getOptionName());
        if (optionEnum == null) {
            throw new ApiException("参数错误");
        }
        settingService.updateOption(optionEnum, req.getItemValues());
        return Result.ok();
    }

    @GetMapping("optionForm")
    public Result<List<Object>> getOptionForm(@RequestParam("optionName") String optionName) {
        SettingOptionEnum optionEnum = SettingOptionEnum.getByName(optionName);
        if (optionEnum == null) {
            throw new ApiException("参数错误");
        }
        Setting option = settingService.getSettingOption(optionEnum);
        return Result.ok(JSONUtil.toList(option.getData(), Object.class));
    }
}
