<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="tab-menu">

			<div class="tab-wrapper">
				<div class="tab-item active">
					<div class="text-clients">
						<xsl:value-of disable-output-escaping="yes" select="/NewsList/ZoneDescription"></xsl:value-of>
					</div>
					<div class="row">

						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col">
			<div class="clients-img">
				<div class="img"><img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>