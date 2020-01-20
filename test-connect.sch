<sch:schema xmlns:sch='http://purl.oclc.org/dsdl/schematron' 
    queryBinding='xslt2'
    xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
    xmlns:ex='http://expath.org/ns/file'>
    
    <sch:ns uri='http://www.w3.org/1999/XSL/Transform' prefix='xsl'/>
    <sch:ns uri='http://expath.org/ns/file' prefix='ex'/>
    <sch:pattern>
        <sch:rule context='//h1'>
            <sch:assert test='text() = "z"'>I try to connect to 
                a server and get some data: 
                <xsl:value-of select='doc("http://devel-new.sync.ro")//h1'/>
                ..Success.
                Context node value: <xsl:value-of select="."/>
            </sch:assert>
        </sch:rule>
    </sch:pattern>
  <sch:pattern id="connect">
    <sch:rule context='p-connect'>
      <sch:assert test='text() != "z"'>Some simple error</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
