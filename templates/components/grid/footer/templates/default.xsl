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
		<footer>
			<div class="container">
				<div class="row">
					<div class="span8">
						<h5>BHP, Krystyna Olędzka</h5>
					</div>
					<div class="span16">
						<ul class="nav nav-pills pull-right">
							<xsl:for-each select="data/link">
								<li><a href="{@href}"><xsl:value-of select="." /></a></li>
							</xsl:for-each>
						</ul>
					</div>
				</div>
			</div>
		</footer>
	</xsl:template>

</xsl:stylesheet>
