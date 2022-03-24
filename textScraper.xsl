<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:variable name="addresses" as="document-node()+" select="collection('Marked_Up_Speeches/?select=*.xml')"/>
    
    <xsl:template match="/">
        <xsl:for-each select="$addresses">
            <xsl:variable name="filename" as="xs:string" select="base-uri() ! tokenize(., '/')[last()] ! substring-before(., '.xml')"/>
            <xsl:result-document method="text" indent="yes" href="plainTextCorpus/{$filename}.txt">
                <xsl:apply-templates/>
            </xsl:result-document>
        </xsl:for-each>
        
        
    </xsl:template>
    
</xsl:stylesheet>