package ${packageName}.<#if (entity.moduleName != "")>${entity.moduleName}.</#if>service;

import net.letcode.core.boot.service.BaseService;
import ${packageName}.<#if (entity.moduleName != "")>${entity.moduleName}.</#if>entity.${entityName};

/**
 * ${entity.entityComment}服务层
 * @author ${author}
 * @since ${version}
 *
 */
public interface ${entityName}Service extends BaseService<${entityName}> {
	
}