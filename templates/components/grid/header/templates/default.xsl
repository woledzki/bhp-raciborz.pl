<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:php="http://php.net/xsl"
>
	<xsl:output method="html" encoding="utf-8" indent="yes" />

	<xsl:template match="/component">
		<div class="navbar navbar-fixed-top navbar-inverse">
			<div class="navbar-inner">
				<div class="container">
					<a class="brand" href="/">BHP, Krystyna Olędzka</a>
					<ul class="nav">
						<xsl:for-each select="data/link">
							<li class="{@active}"><a href="{@href}"><xsl:value-of select="." /></a></li>
						</xsl:for-each>
					</ul>
					<ul class="nav pull-right">
						<li class="divider-vertical"></li>
						<li><a href="/kontakt">Kontakt</a></li>
					</ul>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
