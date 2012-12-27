<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:php="http://php.net/xsl"
>
	<xsl:output method="html" encoding="utf-8" indent="yes" />

	<xsl:template match="/component">
		<ul class="nav nav-tabs nav-stacked">
			<xsl:for-each select="data/link">
				<li class="{@active}"><a href="{@href}"><xsl:value-of select="." /> <i class="icon-chevron-right pull-right"></i></a></li>
			</xsl:for-each>
		</ul>
	</xsl:template>

</xsl:stylesheet>
