package bcp.mapstruct_lombok.demo;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

@Mapper
public interface AnotherMapper {

  AnotherMapper MAPPER = Mappers.getMapper(AnotherMapper.class);

  @Mapping(source = "var", target = "longVar")
  TargetEntity toTarget(AnotherSourceDTO s);

}
