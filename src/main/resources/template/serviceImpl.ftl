package ${packageName}.<#if (entity.moduleName != "")>${entity.moduleName}.</#if>service.impl;

import org.springframework.stereotype.Service;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.beans.factory.annotation.Autowired;
import net.letcode.core.boot.support.bean.Meta;
import net.letcode.core.boot.support.annotation.BootBaseDao;
import net.letcode.core.boot.service.impl.BaseServiceImpl;
import ${packageName}.<#if (entity.moduleName != "")>${entity.moduleName}.</#if>entity.${entityName};
import ${packageName}.<#if (entity.moduleName != "")>${entity.moduleName}.</#if>dao.${entityName}Dao;
import ${packageName}.<#if (entity.moduleName != "")>${entity.moduleName}.</#if>service.${entityName}Service;

/**
 * ${entity.entityComment}服务层
 * @author ${author}
 * @since ${version}
 *
 */
@CacheConfig(cacheNames = "<#if (entity.moduleName != "")>${entity.moduleName}_</#if>${entityNameLower}")
@Service("${entityNameLower}Service")
public class ${entityName}ServiceImpl extends BaseServiceImpl<${entityName}> implements ${entityName}Service {
	
	@BootBaseDao
	@Autowired
	${entityName}Dao ${entityNameLower}Dao;

	@Cacheable
	@Override
	public Meta loadMetaInfo(){
		Meta meta = new Meta("${entity.entityComment}", "${entityNameLower}");

		// 增加表头字段信息
		meta.addColumn("id", "序号")
		<#list entity.fields as field>
		      .addColumn("${field.fieldName}", "${field.comment}")<#if (!field_has_next)>;</#if>
		</#list>

		return meta;
	}

	
}