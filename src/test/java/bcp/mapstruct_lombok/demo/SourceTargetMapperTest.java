package bcp.mapstruct_lombok.demo;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import bcp.mapstruct_lombok.demo.SourceDTO;
import bcp.mapstruct_lombok.demo.SourceTargetMapper;
import bcp.mapstruct_lombok.demo.TargetEntity;

public class SourceTargetMapperTest {

	@Test
	public void mappingSourceToTargetConvertsField() {
		SourceDTO s = new SourceDTO();
		s.setStringVar("5");
		
		TargetEntity t = SourceTargetMapper.MAPPER.toTarget(s);
		assertEquals(5, (long) t.getLongVar());
	}
}
