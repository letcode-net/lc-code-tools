package ${packageName}.<#if (entity.moduleName != "")>${entity.moduleName}.</#if>web;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import net.letcode.core.boot.support.annotation.BootBaseService;
import net.letcode.core.boot.web.BaseController;
import ${packageName}.<#if (entity.moduleName != "")>${entity.moduleName}.</#if>entity.${entityName};
import ${packageName}.<#if (entity.moduleName != "")>${entity.moduleName}.</#if>service.${entityName}Service;

/**
 * ${entity.entityComment}控制器
 * @author ${author}
 * @since ${version}
 *
 */
@RestController
@RequestMapping(value = "/<#if (entity.moduleName != "")>${entity.moduleName}/</#if>${entityNameLower}")
public class ${entityName}Controller extends BaseController<${entityName}> {

	@BootBaseService
    @Autowired
	${entityName}Service ${entityNameLower}Service;

	

}