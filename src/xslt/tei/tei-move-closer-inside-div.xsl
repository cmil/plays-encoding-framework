<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema"
 xmlns:math="http://www.w3.org/2005/xpath-functions/math"
 xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
 xmlns:tei="http://www.tei-c.org/ns/1.0"
 xmlns="http://www.tei-c.org/ns/1.0"
 exclude-result-prefixes="#all"
 version="3.0">

 <xd:doc scope="stylesheet">
  <xd:desc>
   <xd:p><xd:b>Created on:</xd:b> 2026-07-01</xd:p>
   <xd:p><xd:b>Author:</xd:b> Boris</xd:p>
   <xd:p></xd:p>
  </xd:desc>
 </xd:doc>
 
 <xsl:mode on-no-match="shallow-copy"/>
 <xsl:strip-space elements="*"/>
 <xsl:output indent="yes" />
 
 <xsl:template match="tei:body[count(tei:closer) eq 2]">
  <xsl:copy>
   <xsl:copy-of select="@*" />
   <xsl:apply-templates />
  </xsl:copy>
 </xsl:template>
 
 <xsl:template match="(//tei:body//tei:div[not(tei:div)])[last()]">
  <xsl:copy>
   <xsl:copy-of select="@*" />
   <xsl:apply-templates />
   <xsl:copy-of select="ancestor::tei:body/tei:closer[1]" />
  </xsl:copy>
 </xsl:template>
 
 <xsl:template match="tei:body[count(tei:closer) eq 2]/tei:closer[1]" />
 
 
</xsl:stylesheet>