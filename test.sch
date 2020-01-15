<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"    
xmlns:sqf="http://www.schematron-quickfix.com/validator/process">    
<sch:pattern>      
<sch:rule context="//h1">        
<sch:let name="first-letter" value="substring(.,1,1)"/>          
<sch:assert test="$first-letter = upper-case($first-letter)">
Headings MUST be capitalized but heading            
<sch:value-of select="@level"/>            
<sch:value-of select="."/>' is not.          
</sch:assert>      
</sch:rule>    
</sch:pattern></sch:schema>
