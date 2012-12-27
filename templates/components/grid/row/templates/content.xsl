<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl">
	<xsl:output
		method="html"
		encoding="utf-8"
		indent="yes" />

	<xsl:template match="/component">
		<div style="background-color: #ecece8; padding-top: 20px; padding-bottom: 20px;">
			<div class="container container-white">
				<div class="row">
					<xsl:apply-templates select="data/title" />
					<xsl:value-of select="$H_SUB_COMPONENTS" disable-output-escaping="yes" />
				</div>
			</div>
		</div>
	</xsl:template>
	
	<xsl:template match="title">
		<div class="span24">
			<h2 class="page-header"><xsl:value-of select="." /></h2>
		</div>
	</xsl:template>

</xsl:stylesheet>
