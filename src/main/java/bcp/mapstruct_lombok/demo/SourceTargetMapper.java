package bcp.mapstruct_lombok.demo;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

@Mapper
public interface SourceTargetMapper {

	SourceTargetMapper MAPPER = Mappers.getMapper(SourceTargetMapper.class);

	@Mapping(source = "stringVar", target = "longVar")
	TargetEntity toTarget(SourceDTO s);
}
