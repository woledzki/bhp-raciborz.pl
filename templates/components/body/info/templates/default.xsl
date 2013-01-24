<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:php="http://php.net/xsl"
>
	<xsl:output method="html" encoding="utf-8" indent="yes" />

	<xsl:template match="/component">
		<div class="span8">
			<xsl:choose>
				<xsl:when test="data/header/@href">
					<h4><a href="{data/header/@href}"><xsl:value-of select="data/header" /></a></h4>
				</xsl:when>
				<xsl:otherwise>
					<h4><xsl:value-of select="data/header" /></h4>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:value-of select="data/text" disable-output-escaping="yes" />
		</div>
	</xsl:template>

	<xsl:template match="text">
		<xsl:value-of select="." disable-output-escaping="yes" />
	</xsl:template>
</xsl:stylesheet>
