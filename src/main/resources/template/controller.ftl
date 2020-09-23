package ${packageName}.<#if (entity.moduleName != "")>${entity.moduleName}.</#if>web;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import net.letcode.core.mvc.annotation.BaseService;
import net.letcode.core.mvc.web.BaseController;
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

	@BaseService
    @Autowired
	${entityName}Service ${entityNameLower}Service;

	

}