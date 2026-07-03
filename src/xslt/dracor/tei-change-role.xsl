<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema"
 xmlns:math="http://www.w3.org/2005/xpath-functions/math"
 xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
 xmlns:tei="http://www.tei-c.org/ns/1.0"
 xmlns="http://www.tei-c.org/ns/1.0"
 exclude-result-prefixes="xs math xd tei"
 version="3.0">

 <xd:doc scope="stylesheet">
  <xd:desc>
   <xd:p><xd:b>Created on:</xd:b> 2026-07-02</xd:p>
   <xd:p><xd:b>Author:</xd:b> Boris</xd:p>
   <xd:p></xd:p>
  </xd:desc>
 </xd:doc>
 
 <xsl:param name="roleDesc" as="element(roleDesc)*" />
 <xsl:mode on-no-match="shallow-copy"/>
 
 <xsl:variable name="roleDescs" select="tokenize($roleDesc, ',\s+')[.]"/>
 
 <xsl:template match="tei:castList/tei:*/tei:role[. = $roleDescs]">
  <xsl:variable name="items" select="tokenize(.)"/>
  <xsl:for-each select="$items">
   <tei:roleDesc><xsl:value-of select="."/></tei:roleDesc>
  </xsl:for-each>
 </xsl:template>
 
 
</xsl:stylesheet>